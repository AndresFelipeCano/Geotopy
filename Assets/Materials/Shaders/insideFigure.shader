// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32930,y:32699,varname:node_2865,prsc:2|gloss-1813-OUT,emission-3864-OUT,alpha-2437-R,clip-920-OUT,voffset-9918-OUT;n:type:ShaderForge.SFN_Color,id:6665,x:32049,y:32440,ptovrint:False,ptlb:Color,ptin:_Color,varname:_Color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4462442,c2:0.8679245,c3:0.8493209,c4:1;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31883,y:32865,varname:_MainTex,prsc:2,tex:3de9b4fe189bf7447b52627570507f81,ntxv:0,isnm:False|UVIN-9484-UVOUT,TEX-7751-TEX;n:type:ShaderForge.SFN_Slider,id:1813,x:31857,y:33218,ptovrint:False,ptlb:AlphaClip,ptin:_AlphaClip,varname:_Metallic_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.489099,max:2;n:type:ShaderForge.SFN_TexCoord,id:8676,x:30900,y:32947,varname:node_8676,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:6046,x:30800,y:33289,varname:node_6046,prsc:2;n:type:ShaderForge.SFN_Slider,id:3561,x:30699,y:33477,ptovrint:False,ptlb:timeVel,ptin:_timeVel,varname:node_3561,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6720002,max:2;n:type:ShaderForge.SFN_Multiply,id:58,x:31028,y:33338,varname:node_58,prsc:2|A-6046-T,B-3561-OUT;n:type:ShaderForge.SFN_Panner,id:9484,x:31232,y:32979,varname:node_9484,prsc:2,spu:0.5,spv:0.2|UVIN-8676-UVOUT,DIST-58-OUT;n:type:ShaderForge.SFN_Multiply,id:920,x:32309,y:33050,varname:node_920,prsc:2|A-5946-OUT,B-1813-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:7751,x:31643,y:32721,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_7751,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:3de9b4fe189bf7447b52627570507f81,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6072,x:31883,y:33005,varname:node_6072,prsc:2,tex:3de9b4fe189bf7447b52627570507f81,ntxv:0,isnm:False|UVIN-3767-UVOUT,TEX-7751-TEX;n:type:ShaderForge.SFN_Panner,id:3767,x:31283,y:33157,varname:node_3767,prsc:2,spu:-0.3,spv:-0.5|UVIN-8676-UVOUT,DIST-58-OUT;n:type:ShaderForge.SFN_Add,id:5946,x:32088,y:33005,varname:node_5946,prsc:2|A-7736-R,B-6072-R,C-2437-R;n:type:ShaderForge.SFN_Tex2d,id:2437,x:31953,y:32652,ptovrint:False,ptlb:Line,ptin:_Line,varname:node_2437,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:a45e0cbfec1beb141aa891da29c28e43,ntxv:0,isnm:False|UVIN-8901-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7986,x:31204,y:32638,varname:node_7986,prsc:2,uv:1,uaff:False;n:type:ShaderForge.SFN_Panner,id:8901,x:31473,y:32627,varname:node_8901,prsc:2,spu:0,spv:-1|UVIN-7986-UVOUT,DIST-58-OUT;n:type:ShaderForge.SFN_Multiply,id:3235,x:32280,y:32560,varname:node_3235,prsc:2|A-6665-RGB,B-2437-RGB;n:type:ShaderForge.SFN_Multiply,id:2198,x:32447,y:32661,varname:node_2198,prsc:2|A-3235-OUT,B-4778-OUT;n:type:ShaderForge.SFN_Slider,id:4778,x:32180,y:32849,ptovrint:False,ptlb:IntensityLine,ptin:_IntensityLine,varname:node_4778,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:3.651705,max:4;n:type:ShaderForge.SFN_Add,id:3864,x:32611,y:32825,varname:node_3864,prsc:2|A-2198-OUT,B-920-OUT;n:type:ShaderForge.SFN_NormalVector,id:1042,x:32386,y:33287,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:3485,x:32401,y:33528,ptovrint:False,ptlb:insVertexSize,ptin:_insVertexSize,varname:node_3485,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:9918,x:32657,y:33352,varname:node_9918,prsc:2|A-1042-OUT,B-3485-OUT;proporder:6665-1813-3561-7751-2437-4778-3485;pass:END;sub:END;*/

Shader "Shader Forge/insideFigure" {
    Properties {
        _Color ("Color", Color) = (0.4462442,0.8679245,0.8493209,1)
        _AlphaClip ("AlphaClip", Range(0, 2)) = 1.489099
        _timeVel ("timeVel", Range(0, 2)) = 0.6720002
        _Noise ("Noise", 2D) = "white" {}
        _Line ("Line", 2D) = "white" {}
        _IntensityLine ("IntensityLine", Range(0, 4)) = 3.651705
        _insVertexSize ("insVertexSize", Range(-1, 1)) = 0
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
            #define UNITY_PASS_FORWARDBASE
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
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_insVertexSize);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
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
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
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
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_insVertexSize);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
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
                float4 posWorld : TEXCOORD2;
                float3 normalDir : TEXCOORD3;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_insVertexSize);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
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
    CustomEditor "ShaderForgeMaterialInspector"
}
