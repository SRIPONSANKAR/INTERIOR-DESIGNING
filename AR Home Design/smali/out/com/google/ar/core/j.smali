.class final Lcom/google/ar/core/j;
.super Ljava/lang/Object;
.source "ArCoreApkImpl.java"

# interfaces
.implements Lcom/google/ar/core/i;


# instance fields
.field final synthetic a:Lcom/google/ar/core/k;


# direct methods
.method constructor <init>(Lcom/google/ar/core/k;)V
    .registers 2

    iput-object p1, p0, Lcom/google/ar/core/j;->a:Lcom/google/ar/core/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/ar/core/ArCoreApk$Availability;)V
    .registers 4

    iget-object v0, p0, Lcom/google/ar/core/j;->a:Lcom/google/ar/core/k;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/google/ar/core/j;->a:Lcom/google/ar/core/k;

    .line 1
    invoke-static {v1, p1}, Lcom/google/ar/core/k;->e(Lcom/google/ar/core/k;Lcom/google/ar/core/ArCoreApk$Availability;)V

    iget-object p1, p0, Lcom/google/ar/core/j;->a:Lcom/google/ar/core/k;

    .line 2
    invoke-static {p1}, Lcom/google/ar/core/k;->f(Lcom/google/ar/core/k;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p1
.end method
