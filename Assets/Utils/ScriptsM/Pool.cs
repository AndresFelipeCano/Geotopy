using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Pool : MonoBehaviour {

    public IncreaserGeometric[] proyectilSphere;
    public IncreaserGeometric[] proyectilPiramid;
    public IncreaserGeometric[] proyectilCube;
    public Transform poolSite;

    // Use this for initialization

    public IncreaserGeometric OutPool(string figure)
    {
        switch(figure)
        {
            case "Sphere":
                for (int i = 0; i < proyectilSphere.Length; i++)
                {
                    if (proyectilSphere[i].imActive == false)
                    {
                        proyectilSphere[i].imActive = true;
                        return proyectilSphere[i];
                        
                    }
                }
                break;
            case "Piramid":
                for (int i = 0; i < proyectilPiramid.Length; i++)
                {
                    if (proyectilPiramid[i].imActive == false)
                    {
                        proyectilPiramid[i].imActive = true;
                        return proyectilPiramid[i];

                    }
                }

                break;
            case "Cube":
               
                    for (int i = 0; i < proyectilCube.Length; i++)
                    {
                        if (proyectilCube[i].imActive == false)
                        {
                            proyectilCube[i].imActive = true;
                            return proyectilCube[i];

                        }
                    }
                

                break;
            default:
                break;
              


        }
        return null;

    }
    public void InPool(IncreaserGeometric figure)
    {
       figure.GetComponent<Rigidbody>().velocity = Vector3.zero;
        figure.GetComponent<Rigidbody>().angularVelocity = Vector3.zero;
        figure.GetComponent<Transform>().position = poolSite.position;
        figure.sinDisparar = true;
        figure.imActive = false;
        figure.GetComponent<Collider>().enabled = false;
    }
}
