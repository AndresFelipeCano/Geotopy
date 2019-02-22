using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwordCreator : MonoBehaviour {
    public bool canSword;
    public GameObject Sword;
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
      
    }
    private void OnTriggerEnter(Collider other)
    {
       
        string collisionTag = other.gameObject.tag;

        if (collisionTag == "Hand")
        {
            canSword = true;
        }

       
    }


    private void OnTriggerExit(Collider other)
    {
      
        print("buhh");
        string collisionTag = other.gameObject.tag;

        if (collisionTag == "Hand")
        {
            canSword = false;
        }
        DeleteSword();
       
    }

    public void DeleteSword()
    {
       
            Sword.SetActive(false);
       
        

    }
    public void CreateSword()
    {
        if (canSword)
        {
            Sword.SetActive(true);
        }
        
    }
}
