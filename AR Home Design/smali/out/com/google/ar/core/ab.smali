.class final Lcom/google/ar/core/ab;
.super Lcom/google/a/b/a/a/a/d;
.source "InstallServiceImpl.java"


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic b:Lcom/google/ar/core/ad;


# direct methods
.method constructor <init>(Lcom/google/ar/core/ad;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 3

    iput-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iput-object p2, p0, Lcom/google/ar/core/ab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 1
    invoke-direct {p0}, Lcom/google/a/b/a/a/a/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/os/Bundle;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final c(Landroid/os/Bundle;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/ar/core/ab;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    .line 1
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    return-void

    :cond_a
    const/16 v0, -0x64

    const-string v1, "error.code"

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "install.status"

    .line 3
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_26

    iget-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iget-object p1, p1, Lcom/google/ar/core/ad;->b:Lcom/google/ar/core/t;

    .line 4
    sget-object v0, Lcom/google/ar/core/u;->c:Lcom/google/ar/core/u;

    invoke-virtual {p1, v0}, Lcom/google/ar/core/t;->a(Lcom/google/ar/core/u;)V

    return-void

    :cond_26
    if-eqz v0, :cond_51

    new-instance p1, Ljava/lang/StringBuilder;

    const/16 v1, 0x33

    .line 5
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "requestInstall = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", launching fullscreen."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ARCore-InstallService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iget-object v0, p1, Lcom/google/ar/core/ad;->c:Lcom/google/ar/core/v;

    iget-object v1, p1, Lcom/google/ar/core/ad;->a:Landroid/app/Activity;

    iget-object p1, p1, Lcom/google/ar/core/ad;->b:Lcom/google/ar/core/t;

    .line 6
    invoke-static {v0, v1, p1}, Lcom/google/ar/core/v;->i(Lcom/google/ar/core/v;Landroid/app/Activity;Lcom/google/ar/core/t;)V

    return-void

    :cond_51
    const-string v0, "resolution.intent"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iget-object v1, v0, Lcom/google/ar/core/ad;->c:Lcom/google/ar/core/v;

    iget-object v2, v0, Lcom/google/ar/core/ad;->a:Landroid/app/Activity;

    iget-object v0, v0, Lcom/google/ar/core/ad;->b:Lcom/google/ar/core/t;

    .line 8
    invoke-static {v1, v2, p1, v0}, Lcom/google/ar/core/v;->j(Lcom/google/ar/core/v;Landroid/app/Activity;Landroid/os/Bundle;Lcom/google/ar/core/t;)V

    return-void

    :cond_65
    const/16 p1, 0xa

    if-eq v1, p1, :cond_b9

    packed-switch v1, :pswitch_data_c8

    iget-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iget-object p1, p1, Lcom/google/ar/core/ad;->b:Lcom/google/ar/core/t;

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x26

    .line 14
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unexpected install status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/ar/core/t;->b(Ljava/lang/Exception;)V

    return-void

    .line 9
    :pswitch_8c
    iget-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iget-object p1, p1, Lcom/google/ar/core/ad;->b:Lcom/google/ar/core/t;

    .line 10
    sget-object v0, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/u;

    invoke-virtual {p1, v0}, Lcom/google/ar/core/t;->a(Lcom/google/ar/core/u;)V

    return-void

    :pswitch_96
    iget-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iget-object p1, p1, Lcom/google/ar/core/ad;->b:Lcom/google/ar/core/t;

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unexpected FAILED install status without error."

    .line 11
    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/ar/core/t;->b(Ljava/lang/Exception;)V

    return-void

    :pswitch_a5
    iget-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iget-object p1, p1, Lcom/google/ar/core/ad;->b:Lcom/google/ar/core/t;

    .line 12
    sget-object v0, Lcom/google/ar/core/u;->c:Lcom/google/ar/core/u;

    invoke-virtual {p1, v0}, Lcom/google/ar/core/t;->a(Lcom/google/ar/core/u;)V

    return-void

    :pswitch_af
    iget-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iget-object p1, p1, Lcom/google/ar/core/ad;->b:Lcom/google/ar/core/t;

    .line 13
    sget-object v0, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/u;

    invoke-virtual {p1, v0}, Lcom/google/ar/core/t;->a(Lcom/google/ar/core/u;)V

    return-void

    .line 14
    :cond_b9
    iget-object p1, p0, Lcom/google/ar/core/ab;->b:Lcom/google/ar/core/ad;

    iget-object p1, p1, Lcom/google/ar/core/ad;->b:Lcom/google/ar/core/t;

    new-instance v0, Lcom/google/ar/core/exceptions/FatalException;

    const-string v1, "Unexpected REQUIRES_UI_INTENT install status without an intent."

    .line 9
    invoke-direct {v0, v1}, Lcom/google/ar/core/exceptions/FatalException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/google/ar/core/t;->b(Ljava/lang/Exception;)V

    return-void

    :pswitch_data_c8
    .packed-switch 0x1
        :pswitch_af
        :pswitch_af
        :pswitch_af
        :pswitch_a5
        :pswitch_96
        :pswitch_8c
    .end packed-switch
.end method
