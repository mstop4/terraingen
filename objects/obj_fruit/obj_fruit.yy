{
    "id": "5c19ba93-e084-47a1-a33e-3a6aa79f61cd",
    "modelName": "GMObject",
    "mvc": "1.0",
    "name": "obj_fruit",
    "eventList": [
        {
            "id": "9bb19278-bad5-4cdd-a46c-4d135d99cc67",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 0,
            "m_owner": "5c19ba93-e084-47a1-a33e-3a6aa79f61cd"
        },
        {
            "id": "6cd49982-40d7-468b-98aa-bf446608af11",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 25,
            "eventtype": 7,
            "m_owner": "5c19ba93-e084-47a1-a33e-3a6aa79f61cd"
        },
        {
            "id": "20f59fab-6e62-4f13-b26d-c1e9a7321869",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 12,
            "m_owner": "5c19ba93-e084-47a1-a33e-3a6aa79f61cd"
        },
        {
            "id": "e82c54af-815d-4bae-83d8-6026b385a939",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 10,
            "eventtype": 7,
            "m_owner": "5c19ba93-e084-47a1-a33e-3a6aa79f61cd"
        },
        {
            "id": "93fb59c0-7e41-408f-a1b7-492017635eea",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 3,
            "m_owner": "5c19ba93-e084-47a1-a33e-3a6aa79f61cd"
        },
        {
            "id": "3f62e747-c6ef-4274-a366-9e9f52d73fc7",
            "modelName": "GMEvent",
            "mvc": "1.0",
            "IsDnD": false,
            "collisionObjectId": "00000000-0000-0000-0000-000000000000",
            "enumb": 0,
            "eventtype": 2,
            "m_owner": "5c19ba93-e084-47a1-a33e-3a6aa79f61cd"
        }
    ],
    "maskSpriteId": "00000000-0000-0000-0000-000000000000",
    "overriddenProperties": null,
    "parentObjectId": "6a1e8683-bb5e-4644-b09d-0bb0e93236e2",
    "persistent": false,
    "physicsAngularDamping": 0.1,
    "physicsDensity": 0.5,
    "physicsFriction": 0.2,
    "physicsGroup": 0,
    "physicsKinematic": false,
    "physicsLinearDamping": 0.1,
    "physicsObject": false,
    "physicsRestitution": 0.1,
    "physicsSensor": false,
    "physicsShape": 1,
    "physicsShapePoints": null,
    "physicsStartAwake": true,
    "properties": [
        {
            "id": "b46f7950-ebf1-415c-b2ad-7a3dcfd66b67",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.002",
            "varName": "growth_rate",
            "varType": 0
        },
        {
            "id": "d8062fc0-c219-4f0a-a80e-b5ecc6cda2e9",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.15",
            "varName": "width",
            "varType": 0
        },
        {
            "id": "803009f7-ea65-4c8d-8d26-17c7dacfc2ac",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.6",
            "varName": "length",
            "varType": 0
        },
        {
            "id": "a0df279d-f1e4-431e-aa5d-d7d51a42b911",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "12",
            "varName": "draw_threshold_dist",
            "varType": 0
        },
        {
            "id": "c71a5b95-53e1-4ee8-a9ea-420490700efc",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "0.95",
            "varName": "stage_trans",
            "varType": 0
        },
        {
            "id": "06a1e073-e828-47e5-a10a-8374bf34e13d",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "8",
            "varName": "sway_half_angle",
            "varType": 0
        },
        {
            "id": "0a8004f2-2ca9-4d3a-8d43-4bd5771303ae",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "128",
            "varName": "tex_width",
            "varType": 1
        },
        {
            "id": "8cac2b05-ec80-4240-bf35-e62fde587e24",
            "modelName": "GMObjectProperty",
            "mvc": "1.0",
            "listItems": null,
            "multiselect": false,
            "rangeEnabled": false,
            "rangeMax": 10,
            "rangeMin": 0,
            "resourceFilter": 1023,
            "value": "32",
            "varName": "tex_height",
            "varType": 1
        }
    ],
    "solid": false,
    "spriteId": "3c2b1394-d2ca-47a7-bde9-9c1f690be800",
    "visible": false
}