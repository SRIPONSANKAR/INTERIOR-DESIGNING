.class public final Lcom/google/vr/dynamite/client/a;
.super Lcom/google/a/a/a;
.source "ILoadedInstanceCreator.java"

# interfaces
.implements Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 3

    const-string v0, "com.google.vr.dynamite.client.ILoadedInstanceCreator"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/a/a/a;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final newNativeLibraryLoader(Lcom/google/vr/dynamite/client/IObjectWrapper;Lcom/google/vr/dynamite/client/IObjectWrapper;)Lcom/google/vr/dynamite/client/INativeLibraryLoader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/a/a/a;->a()Landroid/os/Parcel;

    move-result-object v0

    .line 2
    invoke-static {v0, p1}, Lcom/google/a/a/c;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 3
    invoke-static {v0, p2}, Lcom/google/a/a/c;->c(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/google/a/a/a;->b(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_17

    const/4 p2, 0x0

    goto :goto_2b

    :cond_17
    const-string v0, "com.google.vr.dynamite.client.INativeLibraryLoader"

    .line 6
    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 7
    instance-of v1, v0, Lcom/google/vr/dynamite/client/INativeLibraryLoader;

    if-eqz v1, :cond_25

    .line 8
    move-object p2, v0

    check-cast p2, Lcom/google/vr/dynamite/client/INativeLibraryLoader;

    goto :goto_2b

    :cond_25
    new-instance v0, Lcom/google/vr/dynamite/client/b;

    .line 9
    invoke-direct {v0, p2}, Lcom/google/vr/dynamite/client/b;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 10
    :goto_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    return-object p2
.end method
