.class public Lcom/unity3d/plugin/PermissionFragment;
.super Landroid/app/Fragment;
.source "PermissionFragment.java"


# static fields
.field private static final PERMISSIONS_REQUEST_CODE:I = 0x3e0f

.field public static final PERMISSION_NAMES:Ljava/lang/String; = "PermissionNames"


# instance fields
.field private final resultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/unity3d/plugin/PermissionFragment;->resultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    return-void
.end method

.method public constructor <init>(Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resultCallbacks"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/unity3d/plugin/PermissionFragment;->resultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 23
    iget-object p1, p0, Lcom/unity3d/plugin/PermissionFragment;->resultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    if-nez p1, :cond_17

    .line 24
    invoke-virtual {p0}, Lcom/unity3d/plugin/PermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_26

    .line 26
    :cond_17
    invoke-virtual {p0}, Lcom/unity3d/plugin/PermissionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "PermissionNames"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e0f

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/unity3d/plugin/PermissionFragment;->requestPermissions([Ljava/lang/String;I)V

    :goto_26
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    const/16 v0, 0x3e0f

    if-eq p1, v0, :cond_5

    return-void

    :cond_5
    const/4 p1, 0x0

    .line 36
    :goto_6
    array-length v0, p2

    if-ge p1, v0, :cond_22

    array-length v0, p3

    if-ge p1, v0, :cond_22

    .line 37
    aget v0, p3, p1

    if-nez v0, :cond_18

    .line 38
    iget-object v0, p0, Lcom/unity3d/plugin/PermissionFragment;->resultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    aget-object v1, p2, p1

    invoke-interface {v0, v1}, Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;->OnPermissionGranted(Ljava/lang/String;)V

    goto :goto_1f

    .line 40
    :cond_18
    iget-object v0, p0, Lcom/unity3d/plugin/PermissionFragment;->resultCallbacks:Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;

    aget-object v1, p2, p1

    invoke-interface {v0, v1}, Lcom/unity3d/plugin/UnityAndroidPermissions$IPermissionRequestResult;->OnPermissionDenied(Ljava/lang/String;)V

    :goto_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 43
    :cond_22
    invoke-virtual {p0}, Lcom/unity3d/plugin/PermissionFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 44
    invoke-virtual {p1, p0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 45
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    return-void
.end method
