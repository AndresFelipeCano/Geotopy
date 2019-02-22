using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Interfaces : MonoBehaviour {

    public Color waterColor;
    public ParticleSystem glows;

    ParticleSystem.MainModule main;
    private GameObject figure;
    private Renderer _renderer;
    private MaterialPropertyBlock _propBlock;
    // Use this for initialization
    private void Awake()
    {
        main = glows.main;
        figure = gameObject;
        _propBlock= new MaterialPropertyBlock();
        _renderer = figure.GetComponent<Renderer>();
    }
    void Start () {
       
    }
	
	// Update is called once per frame
	void Update () {
        _propBlock.SetColor("_Color", waterColor);
        main.startColor = waterColor;
        _renderer.SetPropertyBlock(_propBlock);
    }
}
