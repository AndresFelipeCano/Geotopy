
Shader "Shader Forge/insideFigurePerRender" {
    Properties {
        _Color ("Color", Color) = (0.4462442,0.8679245,0.8493209,1)
        _AlphaClip ("AlphaClip", Range(0, 2)) = 1.489099
        [PerRendererData]_timeVel ("timeVel", Range(0, 2)) = 0.6720002
        _Noise ("Noise", 2D) = "white" {}
        _Line ("Line", 2D) = "white" {}
        _IntensityLine ("IntensityLine", Range(0, 4)) = 3.651705
         [PerRendererData]_insVertexSize ("insVertexSize", Range(-1, 1)) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
         
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _AlphaClip;
            uniform float _timeVel;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _Line; uniform float4 _Line_ST;
            uniform float _IntensityLine;
            uniform float _insVertexSize;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_insVertexSize);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_6046 = _Time;
                float node_58 = (node_6046.g*_timeVel);
                float2 node_9484 = (i.uv0+node_58*float2(0.5,0.2));
                float4 _MainTex = tex2D(_Noise,TRANSFORM_TEX(node_9484, _Noise));
                float2 node_3767 = (i.uv0+node_58*float2(-0.3,-0.5));
                float4 node_6072 = tex2D(_Noise,TRANSFORM_TEX(node_3767, _Noise));
                float2 node_8901 = (i.uv1+node_58*float2(0,-1));
                float4 _Line_var = tex2D(_Line,TRANSFORM_TEX(node_8901, _Line));
                float node_920 = ((_MainTex.r+node_6072.r+_Line_var.r)*_AlphaClip);
                clip(node_920 - 0.5);
////// Lighting:
////// Emissive:
                float3 emissive = (((_Color.rgb*_Line_var.rgb)*_IntensityLine)+node_920);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,_Line_var.r);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
         
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _AlphaClip;
            uniform float _timeVel;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _Line; uniform float4 _Line_ST;
            uniform float _insVertexSize;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float2 uv1 : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_insVertexSize);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float4 node_6046 = _Time;
                float node_58 = (node_6046.g*_timeVel);
                float2 node_9484 = (i.uv0+node_58*float2(0.5,0.2));
                float4 _MainTex = tex2D(_Noise,TRANSFORM_TEX(node_9484, _Noise));
                float2 node_3767 = (i.uv0+node_58*float2(-0.3,-0.5));
                float4 node_6072 = tex2D(_Noise,TRANSFORM_TEX(node_3767, _Noise));
                float2 node_8901 = (i.uv1+node_58*float2(0,-1));
                float4 _Line_var = tex2D(_Line,TRANSFORM_TEX(node_8901, _Line));
                float node_920 = ((_MainTex.r+node_6072.r+_Line_var.r)*_AlphaClip);
                clip(node_920 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _Color;
            uniform float _AlphaClip;
            uniform float _timeVel;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform sampler2D _Line; uniform float4 _Line_ST;
            uniform float _IntensityLine;
            uniform float _insVertexSize;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_insVertexSize);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_6046 = _Time;
                float node_58 = (node_6046.g*_timeVel);
                float2 node_8901 = (i.uv1+node_58*float2(0,-1));
                float4 _Line_var = tex2D(_Line,TRANSFORM_TEX(node_8901, _Line));
                float2 node_9484 = (i.uv0+node_58*float2(0.5,0.2));
                float4 _MainTex = tex2D(_Noise,TRANSFORM_TEX(node_9484, _Noise));
                float2 node_3767 = (i.uv0+node_58*float2(-0.3,-0.5));
                float4 node_6072 = tex2D(_Noise,TRANSFORM_TEX(node_3767, _Noise));
                float node_920 = ((_MainTex.r+node_6072.r+_Line_var.r)*_AlphaClip);
                o.Emission = (((_Color.rgb*_Line_var.rgb)*_IntensityLine)+node_920);
                
                float3 diffColor = float3(0,0,0);
                o.Albedo = diffColor;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
  
}
