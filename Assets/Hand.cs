using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Hand : MonoBehaviour {
    public bool hand;
    public CreatorProyectil creator;
   
    public bool colliding = false;
    
	// Use this for initialization
	void Start () {
       
	}
	
	// Update is called once per frame
	void Update () {
		
	}

    private void OnTriggerEnter(Collider other)
    {
        colliding = true;
        string collisionTag = other.gameObject.tag;

        switch (collisionTag)
        {
            case "Sphere":
                CreateInstance(collisionTag);
                break;
            case "Cube":
                CreateInstance(collisionTag);
                break;
            case "Piramid":
                CreateInstance(collisionTag);
                break;
           
        }
      
    }


    private void OnTriggerExit(Collider other)
    {
        colliding = false;
        print("buhh");
        string collisionTag = other.gameObject.tag;

       
        if (hand)
        {
            creator.CanCreateR = false;
 
        }
        if (hand == false)
        {
            creator.CanCreateL = false;

        }
    }

    private void CreateInstance(string collisionTag)
    {
        if (hand)
        {
            creator.InstanceToCreateR = collisionTag;
            creator.CanCreateR = true;



        }
        if (hand == false)
        {
            creator.InstanceToCreateL = collisionTag;
            creator.CanCreateL = true;

        }
    }
}
