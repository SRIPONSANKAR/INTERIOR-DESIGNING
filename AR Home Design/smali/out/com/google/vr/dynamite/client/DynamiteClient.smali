.class public final Lcom/google/vr/dynamite/client/DynamiteClient;
.super Ljava/lang/Object;
.source "DynamiteClient.java"


# static fields
.field private static final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/google/vr/dynamite/client/g;",
            "Lcom/google/vr/dynamite/client/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 1
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/google/vr/dynamite/client/DynamiteClient;->a:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized checkVersion(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .registers 7

    const-class v0, Lcom/google/vr/dynamite/client/DynamiteClient;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/vr/dynamite/client/g;

    .line 1
    invoke-direct {v1, p1, p2}, Lcom/google/vr/dynamite/client/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v1}, Lcom/google/vr/dynamite/client/DynamiteClient;->getRemoteLibraryLoaderFromInfo(Lcom/google/vr/dynamite/client/g;)Lcom/google/vr/dynamite/client/e;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_8a

    const/4 p2, -0x1

    .line 3
    :try_start_d
    invoke-virtual {p1, p0}, Lcom/google/vr/dynamite/client/e;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/vr/dynamite/client/e;->b(Landroid/content/Context;)Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;

    move-result-object p1

    .line 5
    invoke-static {v2}, Lcom/google/vr/dynamite/client/ObjectWrapper;->b(Ljava/lang/Object;)Lcom/google/vr/dynamite/client/IObjectWrapper;

    move-result-object v2

    invoke-static {p0}, Lcom/google/vr/dynamite/client/ObjectWrapper;->b(Ljava/lang/Object;)Lcom/google/vr/dynamite/client/IObjectWrapper;

    move-result-object p0

    .line 6
    invoke-interface {p1, v2, p0}, Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;->newNativeLibraryLoader(Lcom/google/vr/dynamite/client/IObjectWrapper;Lcom/google/vr/dynamite/client/IObjectWrapper;)Lcom/google/vr/dynamite/client/INativeLibraryLoader;

    move-result-object p0

    if-nez p0, :cond_4e

    const-string p0, "DynamiteClient"

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/lit8 p3, p3, 0x48

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Failed to load native library "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from remote package: no loader available."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4c
    .catch Lcom/google/vr/dynamite/client/d; {:try_start_d .. :try_end_4c} :catch_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_4c} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_4c} :catch_5a
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_4c} :catch_58
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_d .. :try_end_4c} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_4c} :catch_54
    .catchall {:try_start_d .. :try_end_4c} :catchall_8a

    monitor-exit v0

    return p2

    .line 8
    :cond_4e
    :try_start_4e
    invoke-interface {p0, p3}, Lcom/google/vr/dynamite/client/INativeLibraryLoader;->checkVersion(Ljava/lang/String;)I

    move-result p0
    :try_end_52
    .catch Lcom/google/vr/dynamite/client/d; {:try_start_4e .. :try_end_52} :catch_5e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_52} :catch_5c
    .catch Ljava/lang/IllegalStateException; {:try_start_4e .. :try_end_52} :catch_5a
    .catch Ljava/lang/SecurityException; {:try_start_4e .. :try_end_52} :catch_58
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4e .. :try_end_52} :catch_56
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_52} :catch_54
    .catchall {:try_start_4e .. :try_end_52} :catchall_8a

    monitor-exit v0

    return p0

    :catch_54
    move-exception p0

    goto :goto_5f

    :catch_56
    move-exception p0

    goto :goto_5f

    :catch_58
    move-exception p0

    goto :goto_5f

    :catch_5a
    move-exception p0

    goto :goto_5f

    :catch_5c
    move-exception p0

    goto :goto_5f

    :catch_5e
    move-exception p0

    .line 9
    :goto_5f
    :try_start_5f
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p3, p3, 0x36

    invoke-direct {v1, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p3, "Failed to load native library "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from remote package:\n  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DynamiteClient"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_88
    .catchall {:try_start_5f .. :try_end_88} :catchall_8a

    monitor-exit v0

    return p2

    :catchall_8a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getRemoteClassLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 4

    const-class v0, Lcom/google/vr/dynamite/client/DynamiteClient;

    monitor-enter v0

    .line 1
    :try_start_3
    invoke-static {p0, p1, p2}, Lcom/google/vr/dynamite/client/DynamiteClient;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_12

    if-nez p0, :cond_c

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    .line 2
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getRemoteContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;
    .registers 5

    const-class v0, Lcom/google/vr/dynamite/client/DynamiteClient;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/vr/dynamite/client/g;

    .line 1
    invoke-direct {v1, p1, p2}, Lcom/google/vr/dynamite/client/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v1}, Lcom/google/vr/dynamite/client/DynamiteClient;->getRemoteLibraryLoaderFromInfo(Lcom/google/vr/dynamite/client/g;)Lcom/google/vr/dynamite/client/e;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3f

    .line 3
    :try_start_c
    invoke-virtual {p1, p0}, Lcom/google/vr/dynamite/client/e;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0
    :try_end_10
    .catch Lcom/google/vr/dynamite/client/d; {:try_start_c .. :try_end_10} :catch_12
    .catchall {:try_start_c .. :try_end_10} :catchall_3f

    monitor-exit v0

    return-object p0

    :catch_12
    move-exception p0

    .line 4
    :try_start_13
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x34

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to get remote Context"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from remote package:\n  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DynamiteClient"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3f

    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_3f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getRemoteDexClassLoader(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/ClassLoader;
    .registers 7

    const-class v0, Lcom/google/vr/dynamite/client/DynamiteClient;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1
    :try_start_4
    invoke-static {p0, p1, v1}, Lcom/google/vr/dynamite/client/DynamiteClient;->getRemoteContext(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_33

    if-nez p1, :cond_c

    monitor-exit v0

    return-object v1

    .line 2
    :cond_c
    :try_start_c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_c .. :try_end_10} :catchall_33

    .line 3
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getCodeCacheDir()Ljava/io/File;

    move-result-object v3

    .line 4
    new-instance v4, Ldalvik/system/DexClassLoader;

    .line 5
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-direct {v4, v2, v3, p1, p0}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_27
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_27} :catch_29
    .catchall {:try_start_10 .. :try_end_27} :catchall_33

    monitor-exit v0

    return-object v4

    :catch_29
    move-exception p0

    :try_start_2a
    const-string p1, "DynamiteClient"

    const-string v2, "Failed to create class loader for remote package\n "

    .line 8
    invoke-static {p1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_33

    monitor-exit v0

    return-object v1

    :catchall_33
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized getRemoteLibraryLoaderFromInfo(Lcom/google/vr/dynamite/client/g;)Lcom/google/vr/dynamite/client/e;
    .registers 4

    const-class v0, Lcom/google/vr/dynamite/client/DynamiteClient;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/google/vr/dynamite/client/DynamiteClient;->a:Landroid/util/ArrayMap;

    .line 1
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/vr/dynamite/client/e;

    if-nez v1, :cond_19

    new-instance v1, Lcom/google/vr/dynamite/client/e;

    .line 2
    invoke-direct {v1, p0}, Lcom/google/vr/dynamite/client/e;-><init>(Lcom/google/vr/dynamite/client/g;)V

    sget-object v2, Lcom/google/vr/dynamite/client/DynamiteClient;->a:Landroid/util/ArrayMap;

    .line 3
    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_3 .. :try_end_17} :catchall_1b

    monitor-exit v0

    return-object v1

    :cond_19
    monitor-exit v0

    return-object v1

    :catchall_1b
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized loadNativeRemoteLibrary(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    const-class v0, Lcom/google/vr/dynamite/client/DynamiteClient;

    monitor-enter v0

    :try_start_3
    new-instance v1, Lcom/google/vr/dynamite/client/g;

    .line 1
    invoke-direct {v1, p1, p2}, Lcom/google/vr/dynamite/client/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {v1}, Lcom/google/vr/dynamite/client/DynamiteClient;->getRemoteLibraryLoaderFromInfo(Lcom/google/vr/dynamite/client/g;)Lcom/google/vr/dynamite/client/e;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_8b

    const-wide/16 v2, 0x0

    .line 3
    :try_start_e
    invoke-virtual {p1, p0}, Lcom/google/vr/dynamite/client/e;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v4

    .line 4
    invoke-virtual {p1, p0}, Lcom/google/vr/dynamite/client/e;->b(Landroid/content/Context;)Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;

    move-result-object p1

    .line 5
    invoke-static {v4}, Lcom/google/vr/dynamite/client/ObjectWrapper;->b(Ljava/lang/Object;)Lcom/google/vr/dynamite/client/IObjectWrapper;

    move-result-object v4

    invoke-static {p0}, Lcom/google/vr/dynamite/client/ObjectWrapper;->b(Ljava/lang/Object;)Lcom/google/vr/dynamite/client/IObjectWrapper;

    move-result-object p0

    .line 6
    invoke-interface {p1, v4, p0}, Lcom/google/vr/dynamite/client/ILoadedInstanceCreator;->newNativeLibraryLoader(Lcom/google/vr/dynamite/client/IObjectWrapper;Lcom/google/vr/dynamite/client/IObjectWrapper;)Lcom/google/vr/dynamite/client/INativeLibraryLoader;

    move-result-object p0

    if-nez p0, :cond_4f

    const-string p0, "DynamiteClient"

    .line 7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x48

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to load native library "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from remote package: no loader available."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Lcom/google/vr/dynamite/client/d; {:try_start_e .. :try_end_4d} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_4d} :catch_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_4d} :catch_5b
    .catch Ljava/lang/SecurityException; {:try_start_e .. :try_end_4d} :catch_59
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_e .. :try_end_4d} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_4d} :catch_55
    .catchall {:try_start_e .. :try_end_4d} :catchall_8b

    monitor-exit v0

    return-wide v2

    .line 8
    :cond_4f
    :try_start_4f
    invoke-interface {p0, p2}, Lcom/google/vr/dynamite/client/INativeLibraryLoader;->initializeAndLoadNativeLibrary(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_53
    .catch Lcom/google/vr/dynamite/client/d; {:try_start_4f .. :try_end_53} :catch_5f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4f .. :try_end_53} :catch_5d
    .catch Ljava/lang/IllegalStateException; {:try_start_4f .. :try_end_53} :catch_5b
    .catch Ljava/lang/SecurityException; {:try_start_4f .. :try_end_53} :catch_59
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4f .. :try_end_53} :catch_57
    .catch Landroid/os/RemoteException; {:try_start_4f .. :try_end_53} :catch_55
    .catchall {:try_start_4f .. :try_end_53} :catchall_8b

    monitor-exit v0

    return-wide p0

    :catch_55
    move-exception p0

    goto :goto_60

    :catch_57
    move-exception p0

    goto :goto_60

    :catch_59
    move-exception p0

    goto :goto_60

    :catch_5b
    move-exception p0

    goto :goto_60

    :catch_5d
    move-exception p0

    goto :goto_60

    :catch_5f
    move-exception p0

    .line 9
    :goto_60
    :try_start_60
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    new-instance v1, Ljava/lang/StringBuilder;

    add-int/lit8 p2, p2, 0x36

    invoke-direct {v1, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Failed to load native library "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from remote package:\n  "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "DynamiteClient"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_89
    .catchall {:try_start_60 .. :try_end_89} :catchall_8b

    monitor-exit v0

    return-wide v2

    :catchall_8b
    move-exception p0

    monitor-exit v0

    throw p0
.end method
