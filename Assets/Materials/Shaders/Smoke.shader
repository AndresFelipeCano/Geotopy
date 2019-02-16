// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33394,y:32697,varname:node_3138,prsc:2|emission-6544-OUT,alpha-7871-OUT,voffset-1486-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31997,y:32371,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.7843137,c2:0.07843135,c3:0.09239953,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3514,x:32057,y:32971,varname:node_3514,prsc:2,tex:79254785fafc75b47a69ad6f631b7f01,ntxv:0,isnm:False|UVIN-7260-UVOUT,TEX-5292-TEX;n:type:ShaderForge.SFN_Color,id:8514,x:32006,y:32066,ptovrint:False,ptlb:intersectionColor,ptin:_intersectionColor,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Slider,id:8492,x:31909,y:32247,ptovrint:False,ptlb:intersectionIntensity,ptin:_intersectionIntensity,varname:node_8492,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.661115,max:2;n:type:ShaderForge.SFN_Slider,id:8221,x:31795,y:32536,ptovrint:False,ptlb:ColorIntensity,ptin:_ColorIntensity,varname:node_8221,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.363941,max:2;n:type:ShaderForge.SFN_Multiply,id:1380,x:32299,y:32351,varname:node_1380,prsc:2|A-8514-RGB,B-8492-OUT;n:type:ShaderForge.SFN_Multiply,id:5611,x:32299,y:32558,varname:node_5611,prsc:2|A-7241-RGB,B-5117-OUT;n:type:ShaderForge.SFN_DepthBlend,id:1187,x:31975,y:32620,varname:node_1187,prsc:2|DIST-1444-OUT;n:type:ShaderForge.SFN_Lerp,id:6544,x:32490,y:32436,varname:node_6544,prsc:2|A-1380-OUT,B-5611-OUT,T-1187-OUT;n:type:ShaderForge.SFN_Slider,id:1444,x:31855,y:32770,ptovrint:False,ptlb:DepthDistance,ptin:_DepthDistance,varname:node_1444,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5289589,max:2;n:type:ShaderForge.SFN_Time,id:9607,x:31071,y:33962,varname:node_9607,prsc:2;n:type:ShaderForge.SFN_Slider,id:4401,x:30992,y:34097,ptovrint:False,ptlb:tiempo,ptin:_tiempo,varname:node_4401,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.236893,max:3;n:type:ShaderForge.SFN_Multiply,id:2354,x:31357,y:34006,varname:node_2354,prsc:2|A-9607-T,B-4401-OUT;n:type:ShaderForge.SFN_TexCoord,id:6721,x:31307,y:33137,varname:node_6721,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:7260,x:31692,y:33146,varname:node_7260,prsc:2,spu:0.2,spv:0.3|UVIN-6721-UVOUT,DIST-2354-OUT;n:type:ShaderForge.SFN_RemapRange,id:9391,x:32615,y:33482,varname:node_9391,prsc:2,frmn:0,frmx:1,tomn:0,tomx:0.2|IN-8157-R;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:2122,x:33031,y:33051,varname:node_2122,prsc:2|IN-3514-B,IMIN-832-OUT,IMAX-3119-OUT,OMIN-7870-OUT,OMAX-771-OUT;n:type:ShaderForge.SFN_Vector1,id:832,x:32666,y:33024,varname:node_832,prsc:2,v1:-1;n:type:ShaderForge.SFN_Vector1,id:3119,x:32677,y:32942,varname:node_3119,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:7870,x:32677,y:33094,varname:node_7870,prsc:2,v1:-1;n:type:ShaderForge.SFN_Multiply,id:8885,x:32378,y:33180,varname:node_8885,prsc:2|A-1226-OUT,B-2354-OUT;n:type:ShaderForge.SFN_Sin,id:8964,x:32581,y:33180,varname:node_8964,prsc:2|IN-8885-OUT;n:type:ShaderForge.SFN_Vector1,id:1226,x:32378,y:33123,varname:node_1226,prsc:2,v1:2;n:type:ShaderForge.SFN_RemapRange,id:771,x:32759,y:33135,varname:node_771,prsc:2,frmn:-1,frmx:1,tomn:0.5,tomx:1|IN-8964-OUT;n:type:ShaderForge.SFN_Add,id:1546,x:32803,y:33318,varname:node_1546,prsc:2|A-2122-OUT,B-9391-OUT;n:type:ShaderForge.SFN_Clamp01,id:7871,x:33286,y:33232,varname:node_7871,prsc:2|IN-8472-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:5292,x:31733,y:32982,ptovrint:False,ptlb:MultichanelTexure,ptin:_MultichanelTexure,varname:node_5292,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:79254785fafc75b47a69ad6f631b7f01,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8157,x:31923,y:33309,varname:node_8157,prsc:2,tex:79254785fafc75b47a69ad6f631b7f01,ntxv:0,isnm:False|UVIN-5262-UVOUT,TEX-5292-TEX;n:type:ShaderForge.SFN_Panner,id:5262,x:31697,y:33317,varname:node_5262,prsc:2,spu:-0.5,spv:-0.2|UVIN-6721-UVOUT,DIST-2354-OUT;n:type:ShaderForge.SFN_RemapRange,id:5626,x:32224,y:32808,varname:node_5626,prsc:2,frmn:0.5,frmx:1,tomn:1,tomx:2|IN-771-OUT;n:type:ShaderForge.SFN_Multiply,id:5117,x:32400,y:32758,varname:node_5117,prsc:2|A-8221-OUT,B-5626-OUT;n:type:ShaderForge.SFN_NormalVector,id:9618,x:32897,y:33752,prsc:2,pt:False;n:type:ShaderForge.SFN_Slider,id:3108,x:32832,y:33957,ptovrint:False,ptlb:vertexSize,ptin:_vertexSize,varname:node_3108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:1486,x:33182,y:33729,varname:node_1486,prsc:2|A-9618-OUT,B-3108-OUT;n:type:ShaderForge.SFN_Multiply,id:631,x:32409,y:32198,varname:node_631,prsc:2|A-8492-OUT,B-1187-OUT;n:type:ShaderForge.SFN_OneMinus,id:7149,x:32655,y:32527,varname:node_7149,prsc:2|IN-631-OUT;n:type:ShaderForge.SFN_Clamp01,id:1013,x:32797,y:32808,varname:node_1013,prsc:2|IN-7149-OUT;n:type:ShaderForge.SFN_Multiply,id:9314,x:32963,y:33332,varname:node_9314,prsc:2|A-1546-OUT,B-3289-OUT;n:type:ShaderForge.SFN_OneMinus,id:3289,x:33042,y:32922,varname:node_3289,prsc:2|IN-1013-OUT;n:type:ShaderForge.SFN_Add,id:8472,x:33158,y:33332,varname:node_8472,prsc:2|A-1013-OUT,B-9314-OUT;proporder:7241-8221-8514-8492-1444-4401-5292-3108;pass:END;sub:END;*/

Shader "Shader Forge/EnergyBall" {
    Properties {
        _Color ("Color", Color) = (0.7843137,0.07843135,0.09239953,1)
        _ColorIntensity ("ColorIntensity", Range(0, 2)) = 1.363941
        _intersectionColor ("intersectionColor", Color) = (0.07843138,0.3921569,0.7843137,1)
        _intersectionIntensity ("intersectionIntensity", Range(0, 2)) = 1.661115
        _DepthDistance ("DepthDistance", Range(0, 2)) = 0.5289589
        _tiempo ("tiempo", Range(0, 3)) = 1.236893
        _MultichanelTexure ("MultichanelTexure", 2D) = "white" {}
        _vertexSize ("vertexSize", Range(-1, 1)) = 0
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
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Color;
            uniform float4 _intersectionColor;
            uniform float _intersectionIntensity;
            uniform float _ColorIntensity;
            uniform float _DepthDistance;
            uniform float _tiempo;
            uniform sampler2D _MultichanelTexure; uniform float4 _MultichanelTexure_ST;
            uniform float _vertexSize;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 projPos : TEXCOORD3;
                UNITY_FOG_COORDS(4)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_vertexSize);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_9607 = _Time;
                float node_2354 = (node_9607.g*_tiempo);
                float node_771 = (sin((2.0*node_2354))*0.25+0.75);
                float node_1187 = saturate((sceneZ-partZ)/_DepthDistance);
                float3 emissive = lerp((_intersectionColor.rgb*_intersectionIntensity),(_Color.rgb*(_ColorIntensity*(node_771*2.0+0.0))),node_1187);
                float3 finalColor = emissive;
                float node_1013 = saturate((1.0 - (_intersectionIntensity*node_1187)));
                float2 node_7260 = (i.uv0+node_2354*float2(0.2,0.3));
                float4 node_3514 = tex2D(_MultichanelTexure,TRANSFORM_TEX(node_7260, _MultichanelTexure));
                float node_832 = (-1.0);
                float node_7870 = (-1.0);
                float2 node_5262 = (i.uv0+node_2354*float2(-0.5,-0.2));
                float4 node_8157 = tex2D(_MultichanelTexure,TRANSFORM_TEX(node_5262, _MultichanelTexure));
                fixed4 finalRGBA = fixed4(finalColor,saturate((node_1013+(((node_7870 + ( (node_3514.b - node_832) * (node_771 - node_7870) ) / (2.0 - node_832))+(node_8157.r*0.2+0.0))*(1.0 - node_1013)))));
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
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _vertexSize;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                v.vertex.xyz += (v.normal*_vertexSize);
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
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
