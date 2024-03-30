.class public Lcom/unity3d/plugin/UnityAndroidPermissions;
.super Ljava/lang/Object;
.source "UnityAndroidPermissions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsPermissionGranted(Landroid/app/Activity;Ljava/lang/String;)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "permissionName"
        }
    .end annotation

    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-ge v0, v2, :cond_8

    return v1

    :cond_8
    if-eqz p1, :cond_13

    .line 20
    invoke-virtual {p1, p2}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    return v1

    .line 18
    :cond_13
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Invalid activity."

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public RequestPermissionAsync(Landroid/app/Activity;[Ljava/lang/String;Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "activity",
            "permissionNames",
            "resultCallbacks"
        }
    .end annotation

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_2f

    if-eqz p2, :cond_2f

    if-nez p3, :cond_e

    goto :goto_2f

    .line 31
    :cond_e
    new-instance v0, Lcom/unity3d/plugin/PermissionFragment;

    invoke-direct {v0, p3}, Lcom/unity3d/plugin/PermissionFragment;-><init>(Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;)V

    .line 32
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    const-string v1, "PermissionNames"

    .line 33
    invoke-virtual {p3, v1, p2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 37
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    :cond_2f
    :goto_2f
    return-void
.end method
