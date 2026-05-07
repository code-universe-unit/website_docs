# Thousand Project

## Texture Replacement Guide

<div class="video-embed">
  <iframe
    src="https://www.youtube.com/embed/WNIQKLO5qHE"
    title="Texture Replacement Guide"
    frameborder="0"
    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
    allowfullscreen
  ></iframe>
</div>

---

## Possible issues and conflicts

<ImageZoom src="/images/mlo/thousand/main.png" alt="Possible issues and conflicts" width="700" />

The modification disables the bank interior. If your server has scripts linked to this bank, there may still be remaining markers, NPCs, or map blips.

If you have robbery scripts related to this bank, some props may remain floating in the air.

All scripts configured through config files can be adjusted to remove the coordinates related to this bank.

Check the banking resource used by your framework:

### ESX

```text
resources\[esx_addons]\esx_banking\config.lua
```

### OX

```text
resources\[ox]\ox_banking\data\banks.json
```

### QB

```text
resources\[qb]\qb-banking\config.lua
```

### Qbox

```text
resources\[standalone]\Renewed-Banking\config.lua
```

---

## Lod Lights Issues

The largest area potentially affected by the modification is the YMAP block containing LOD lights. If you notice a large number of small floating lights around the building at night, then you are experiencing this issue.

This means that the following files are being duplicated somewhere within your server resources:

```text
vw_distlodlights_medium013.ymap
vw_distlodlights_small024.ymap
vw_lodlights_medium013.ymap
vw_lodlights_small024.ymap
```

Programs have already been created to solve this issue. One example is VERTEX HUB.

This utility automatically detects all conflicting files and also fixes them for you automatically. Instructions for using the program can be found on the utility's website.

Additionally, to receive a free solution for this issue, use the promo code available in the `vertex-hub` channel on our studio's Discord server.

---

## Ped (NPC) Issues

<ImageZoom src="/images/mlo/thousand/ped.png" alt="Ped issues" width="700" />

The NavMesh file used in the modification is disabled using PolyZone. One downside of this method is that it freezes NPCs around the building, which makes the gameplay feel somewhat unusual.

At the moment, solutions to this issue are still being explored. However, our team does not yet know how to edit NavMesh files directly.

---

## Props

For script creators

### List of doors

#### Lobby

```
gc_thousands_lobby_ent_door_l.ydr
gc_thousands_lobby_ent_door_r.ydr
gc_thousands_lobby_back_door_l.ydr
gc_thousands_lobby_back_door_r.ydr
gc_thousand_parking_door.ydr
```

#### Apartments

```
gc_thousands_aparts_door_enter.ydr
gc_thousands_aparts_door.ydr
```

#### Exterior

```
gc_thousand_door_01.ydr
```

#### Elevator

```
gc_thousands_lobby_elev_door.ydr
```

---

## List of custom YMAPs

### Base

```
gc_thousands_base.ymap
gc_thousands_base_lod.ymap
gc_thousands_base_lod.ymap
gc_thousands_exterior_pros.ymap
gc_thousands_occl_main.ymap
gc_thousands_lodlights.ymap
gc_thousands_distantlights.ymap
```

### Lobby

```
gc_thousands_lobby_int_milo.ymap
gc_thousands_lobby_int_milo_lod.ymap
```

### Apartments

```
gc_thousands_def_apart_03_int_milo.ymap
gc_thousands_def_apart_04_int_milo.ymap
gc_thousands_def_apart_05_int_milo.ymap
gc_thousands_def_apart_06_int_milo.ymap
gc_thousands_def_apart_07_int_milo.ymap
gc_thousands_def_apart_08_int_milo.ymap
gc_thousands_def_apart_09_int_milo.ymap
gc_thousands_def_apart_10_int_milo.ymap
gc_thousands_def_apart_11_int_milo.ymap
gc_thousands_def_apart_12_int_milo.ymap
gc_thousands_def_apart_13_int_milo.ymap
```

---

## Files that change the environment

### YDRs

```
bh1_04_details2c.ydr
bh1_04_ground2.ydr
bh1_rd2sect_01_r5.ydr
bh1_rd2sect_02_r4.ydr
```

### YMAPs

```
hei_bh1_04.ymap
hei_bh1_04_interior_v_genbank_milo_.ymap
hei_bh1_04_strm_0.ymap
hei_bh1_occl_02.ymap
hei_bh1_rd.ymap
hei_bh1_rd_critical_0.ymap
hei_bh1_rd_long_0.ymap
hei_bh1_rd_strm_0.ymap
vw_distlodlights_medium013.ymap
vw_distlodlights_small024.ymap
vw_lodlights_medium013.ymap
vw_lodlights_small024.ymap
```

### Collision YBNs

```
hei_bh1_04_0.ybn
hei_bh1_rd_10.ybn
hei_bh1_rd_5.ybn
hi@hei_bh1_04_0.ybn
hi@hei_bh1_04_3.ybn
hi@hei_bh1_rd_19.ybn
ma@hei_bh1_04_0.ybn
```

### Scenario YMTs

```
morningwood.ymt
rockford_west.ymt
```

### Nodes YNDs

```
nodes461.ynd
nodes492.ynd
nodes493.ynd
nodes464.ynd
nodes525.ynd
```

### LODs / SLODs YDDs

```
bh1_04_emb_slod_children.ydd
bh1_lod_01_04_children.ydd
bh1_lod_emissive_6_21_children.ydd
bh1_lod_emissive_6_21_slod3_children.ydd
bh1_lod_slod3_children.ydd
bh1_props_combo1105_slod_children.ydd
```
