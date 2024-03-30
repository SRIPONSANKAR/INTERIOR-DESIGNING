.class final Lcom/google/vr/dynamite/client/e;
.super Ljava/lang/Object;
.source "RemoteLibraryLoader.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;

.field private final c:Lcom/google/vr/dynamite/client/g;


# direct methods
.method public constructor <init>(Lcom/google/vr/dynamite/client/g;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/vr/dynamite/client/e;->c:Lcom/google/vr/dynamite/client/g;

    return-void
.end method

.method private static c(Ljava/lang/ClassLoader;)Landroid/os/IBinder;
    .registers 4

    const-string v0, "com.google.vr.dynamite.LoadedInstanceCreator"

    .line 1
    :try_start_2
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/IBinder;
    :try_end_15
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_15} :catch_4a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_15} :catch_3d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_15} :catch_30
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_15} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 4
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to call the default constructor of "

    .line 3
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_23
    move-exception p0

    .line 5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to instantiate the remote class "

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_30
    move-exception p0

    .line 6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find dynamic class "

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3d
    move-exception p0

    .line 7
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to invoke constructor of dynamic class "

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_4a
    move-exception p0

    .line 2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No constructor for dynamic class "

    .line 7
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Landroid/content/Context;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/dynamite/client/d;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/vr/dynamite/client/e;->a:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_19

    :try_start_5
    iget-object v0, p0, Lcom/google/vr/dynamite/client/e;->c:Lcom/google/vr/dynamite/client/g;

    .line 1
    invoke-virtual {v0}, Lcom/google/vr/dynamite/client/g;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/vr/dynamite/client/e;->a:Landroid/content/Context;
    :try_end_12
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_12} :catch_13
    .catchall {:try_start_5 .. :try_end_12} :catchall_1d

    goto :goto_19

    :catch_13
    :try_start_13
    new-instance p1, Lcom/google/vr/dynamite/client/d;

    .line 3
    invoke-direct {p1}, Lcom/google/vr/dynamite/client/d;-><init>()V

    throw p1

    :cond_19
    :goto_19
    iget-object p1, p0, Lcom/google/vr/dynamite/client/e;->a:Landroid/content/Context;
    :try_end_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object p1

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/dynamite/client/d;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/google/vr/dynamite/client/e;->b:Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;

    if-nez v0, :cond_2b

    .line 1
    invoke-virtual {p0, p1}, Lcom/google/vr/dynamite/client/e;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcom/google/vr/dynamite/client/e;->c(Ljava/lang/ClassLoader;)Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_15

    const/4 p1, 0x0

    goto :goto_29

    :cond_15
    const-string v0, "com.google.vr.dynamite.client.ILoadedInstanceCreator"

    .line 3
    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;

    if-eqz v1, :cond_23

    .line 5
    move-object p1, v0

    check-cast p1, Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;

    goto :goto_29

    :cond_23
    new-instance v0, Lcom/google/vr/dynamite/client/a;

    .line 6
    invoke-direct {v0, p1}, Lcom/google/vr/dynamite/client/a;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    .line 2
    :goto_29
    iput-object p1, p0, Lcom/google/vr/dynamite/client/e;->b:Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;

    :cond_2b
    iget-object p1, p0, Lcom/google/vr/dynamite/client/e;->b:Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2f

    monitor-exit p0

    return-object p1

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
