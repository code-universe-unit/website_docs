# Thousand

## Possible issues and conflicts

<ImageZoom src="/images/mlo/thousand/main.png" alt="Possible issues and conflicts" width="700" />

The modification disables the bank interior. If your server has scripts linked to this bank, there may still be remaining markers, NPCs, or map blips.

If you have robbery scripts related to this bank, some props may remain floating in the air.

All scripts configured through config files can be adjusted to remove the coordinates related to this bank.

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
