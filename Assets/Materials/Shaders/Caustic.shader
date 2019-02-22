// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:32719,y:32712,varname:node_2865,prsc:2|emission-75-OUT;n:type:ShaderForge.SFN_Tex2d,id:7736,x:31921,y:32620,ptovrint:True,ptlb:Base Color,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:4ac02794ffc1b414f9d25083570da0bb,ntxv:0,isnm:False|UVIN-3164-OUT;n:type:ShaderForge.SFN_Tex2d,id:6193,x:31139,y:32766,ptovrint:False,ptlb:NoiseG,ptin:_NoiseG,varname:node_6193,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:be1a8c86ed8e72149b02e4115018d8d1,ntxv:0,isnm:False|UVIN-3348-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3522,x:30744,y:32757,varname:node_3522,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:3348,x:30959,y:32709,varname:node_3348,prsc:2,spu:0.05,spv:0.05|UVIN-3522-UVOUT;n:type:ShaderForge.SFN_Vector1,id:1604,x:30757,y:33151,varname:node_1604,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4629,x:30957,y:33054,varname:node_4629,prsc:2|A-3522-UVOUT,B-1604-OUT;n:type:ShaderForge.SFN_Add,id:3164,x:31561,y:32831,varname:node_3164,prsc:2|A-6529-OUT,B-4629-OUT;n:type:ShaderForge.SFN_RemapRange,id:6529,x:31295,y:32836,varname:node_6529,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.1|IN-6193-G;n:type:ShaderForge.SFN_Slider,id:6288,x:31659,y:33162,ptovrint:False,ptlb:Thikness,ptin:_Thikness,varname:node_6288,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_OneMinus,id:3104,x:32062,y:33044,varname:node_3104,prsc:2|IN-6288-OUT;n:type:ShaderForge.SFN_Subtract,id:9145,x:32279,y:32850,varname:node_9145,prsc:2|A-7736-RGB,B-3104-OUT;n:type:ShaderForge.SFN_Multiply,id:3750,x:32439,y:32929,varname:node_3750,prsc:2|A-9145-OUT,B-7668-OUT;n:type:ShaderForge.SFN_Slider,id:7668,x:31917,y:33255,ptovrint:False,ptlb:Opacity,ptin:_Opacity,varname:node_7668,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_VertexColor,id:5786,x:32271,y:33304,varname:node_5786,prsc:2;n:type:ShaderForge.SFN_Multiply,id:75,x:32485,y:33108,varname:node_75,prsc:2|A-5786-RGB,B-3750-OUT;proporder:7736-6193-6288-7668;pass:END;sub:END;*/

Shader "Shader Forge/water" {
    Properties {
        _MainTex ("Base Color", 2D) = "white" {}
        _NoiseG ("NoiseG", 2D) = "white" {}
        _Thikness ("Thikness", Range(0, 1)) = 1
        _Opacity ("Opacity", Range(0, 1)) = 1
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
            Blend One One
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _NoiseG; uniform float4 _NoiseG_ST;
            uniform float _Thikness;
            uniform float _Opacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_1678 = _Time;
                float2 node_3348 = (i.uv0+node_1678.g*float2(0.05,0.05));
                float4 _NoiseG_var = tex2D(_NoiseG,TRANSFORM_TEX(node_3348, _NoiseG));
                float2 node_3164 = ((_NoiseG_var.g*0.1+0.0)+(i.uv0*1.0));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3164, _MainTex));
                float3 emissive = (i.vertexColor.rgb*((_MainTex_var.rgb-(1.0 - _Thikness))*_Opacity));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _NoiseG; uniform float4 _NoiseG_ST;
            uniform float _Thikness;
            uniform float _Opacity;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i) : SV_Target {
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                float4 node_8472 = _Time;
                float2 node_3348 = (i.uv0+node_8472.g*float2(0.05,0.05));
                float4 _NoiseG_var = tex2D(_NoiseG,TRANSFORM_TEX(node_3348, _NoiseG));
                float2 node_3164 = ((_NoiseG_var.g*0.1+0.0)+(i.uv0*1.0));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3164, _MainTex));
                o.Emission = (i.vertexColor.rgb*((_MainTex_var.rgb-(1.0 - _Thikness))*_Opacity));
                
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
