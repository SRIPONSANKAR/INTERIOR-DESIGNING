.class final Lcom/google/ar/core/t;
.super Ljava/lang/Object;
.source "InstallActivity.java"


# instance fields
.field a:Z

.field final synthetic b:Lcom/google/ar/core/InstallActivity;


# direct methods
.method constructor <init>(Lcom/google/ar/core/InstallActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/ar/core/t;->a:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/u;)V
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/ar/core/t;->a:Z

    if-eqz v1, :cond_9

    .line 1
    monitor-exit v0

    return-void

    :cond_9
    iget-object v1, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    .line 2
    invoke-static {v1, p1}, Lcom/google/ar/core/InstallActivity;->access$402(Lcom/google/ar/core/InstallActivity;Lcom/google/ar/core/u;)Lcom/google/ar/core/u;

    .line 3
    sget-object v1, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/u;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$UserMessageType;->APPLICATION:Lcom/google/ar/core/ArCoreApk$UserMessageType;

    sget-object v1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-virtual {p1}, Lcom/google/ar/core/u;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4b

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3d

    const/4 v2, 0x2

    if-eq p1, v2, :cond_21

    goto :goto_47

    :cond_21
    iget-object p1, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    .line 4
    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->access$500(Lcom/google/ar/core/InstallActivity;)Z

    move-result p1

    if-nez p1, :cond_36

    invoke-static {}, Lcom/google/ar/core/k;->a()Lcom/google/ar/core/k;

    move-result-object p1

    .line 5
    iget-boolean p1, p1, Lcom/google/ar/core/k;->b:Z

    if-eqz p1, :cond_36

    iget-object p1, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    .line 6
    invoke-static {p1}, Lcom/google/ar/core/InstallActivity;->access$600(Lcom/google/ar/core/InstallActivity;)V

    :cond_36
    iget-object p1, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    const/4 v2, 0x0

    .line 7
    invoke-static {p1, v2}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    goto :goto_47

    .line 10
    :cond_3d
    iget-object p1, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    new-instance v2, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;

    .line 8
    invoke-direct {v2}, Lcom/google/ar/core/exceptions/UnavailableUserDeclinedInstallationException;-><init>()V

    invoke-static {p1, v2}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    .line 7
    :goto_47
    iput-boolean v1, p0, Lcom/google/ar/core/t;->a:Z

    .line 10
    monitor-exit v0

    return-void

    .line 9
    :cond_4b
    monitor-exit v0

    return-void

    :catchall_4d
    move-exception p1

    .line 10
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_3 .. :try_end_4f} :catchall_4d

    throw p1
.end method

.method public final b(Ljava/lang/Exception;)V
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    monitor-enter v0

    :try_start_3
    iget-boolean v1, p0, Lcom/google/ar/core/t;->a:Z

    if-eqz v1, :cond_9

    .line 1
    monitor-exit v0

    return-void

    :cond_9
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/ar/core/t;->a:Z

    iget-object v1, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    .line 2
    sget-object v2, Lcom/google/ar/core/u;->b:Lcom/google/ar/core/u;

    invoke-static {v1, v2}, Lcom/google/ar/core/InstallActivity;->access$402(Lcom/google/ar/core/InstallActivity;Lcom/google/ar/core/u;)Lcom/google/ar/core/u;

    iget-object v1, p0, Lcom/google/ar/core/t;->b:Lcom/google/ar/core/InstallActivity;

    .line 3
    invoke-static {v1, p1}, Lcom/google/ar/core/InstallActivity;->access$000(Lcom/google/ar/core/InstallActivity;Ljava/lang/Exception;)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1a

    throw p1
.end method
