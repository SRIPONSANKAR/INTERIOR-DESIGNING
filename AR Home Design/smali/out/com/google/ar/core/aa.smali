.class final Lcom/google/ar/core/aa;
.super Landroid/content/BroadcastReceiver;
.source "InstallServiceImpl.java"


# instance fields
.field final synthetic a:Lcom/google/ar/core/t;


# direct methods
.method constructor <init>(Lcom/google/ar/core/t;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ar/core/aa;->a:Lcom/google/ar/core/t;

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "com.google.android.play.core.install.ACTION_INSTALL_STATUS"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    if-eqz p2, :cond_45

    const-string p1, "install.status"

    .line 4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 5
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x3

    if-eq p1, p2, :cond_3e

    const/4 p2, 0x4

    if-eq p1, p2, :cond_36

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2e

    goto :goto_45

    :cond_2e
    iget-object p1, p0, Lcom/google/ar/core/aa;->a:Lcom/google/ar/core/t;

    .line 6
    sget-object p2, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/u;

    invoke-virtual {p1, p2}, Lcom/google/ar/core/t;->a(Lcom/google/ar/core/u;)V

    return-void

    :cond_36
    iget-object p1, p0, Lcom/google/ar/core/aa;->a:Lcom/google/ar/core/t;

    .line 7
    sget-object p2, Lcom/google/ar/core/u;->c:Lcom/google/ar/core/u;

    invoke-virtual {p1, p2}, Lcom/google/ar/core/t;->a(Lcom/google/ar/core/u;)V

    return-void

    :cond_3e
    iget-object p1, p0, Lcom/google/ar/core/aa;->a:Lcom/google/ar/core/t;

    .line 8
    sget-object p2, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/u;

    invoke-virtual {p1, p2}, Lcom/google/ar/core/t;->a(Lcom/google/ar/core/u;)V

    :cond_45
    :goto_45
    return-void
.end method
