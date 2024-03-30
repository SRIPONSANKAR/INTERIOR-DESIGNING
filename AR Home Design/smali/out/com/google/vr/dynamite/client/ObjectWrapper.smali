.class public final Lcom/google/vr/dynamite/client/ObjectWrapper;
.super Lcom/google/vr/dynamite/client/c;
.source "ObjectWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/vr/dynamite/client/c;"
    }
.end annotation


# instance fields
.field private final wrappedObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/vr/dynamite/client/c;-><init>()V

    iput-object p1, p0, Lcom/google/vr/dynamite/client/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    return-void
.end method

.method public static b(Ljava/lang/Object;)Lcom/google/vr/dynamite/client/IObjectWrapper;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/vr/dynamite/client/IObjectWrapper;"
        }
    .end annotation

    new-instance v0, Lcom/google/vr/dynamite/client/ObjectWrapper;

    .line 1
    invoke-direct {v0, p0}, Lcom/google/vr/dynamite/client/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static unwrap(Lcom/google/vr/dynamite/client/IObjectWrapper;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/vr/dynamite/client/IObjectWrapper;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "remoteBinder is the wrong class."

    const/4 v1, 0x0

    if-nez p0, :cond_6

    return-object v1

    .line 1
    :cond_6
    instance-of v2, p0, Lcom/google/vr/dynamite/client/ObjectWrapper;

    if-eqz v2, :cond_f

    .line 2
    check-cast p0, Lcom/google/vr/dynamite/client/ObjectWrapper;

    iget-object p0, p0, Lcom/google/vr/dynamite/client/ObjectWrapper;->wrappedObject:Ljava/lang/Object;

    return-object p0

    :cond_f
    invoke-interface {p0}, Lcom/google/vr/dynamite/client/IObjectWrapper;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 3
    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move-object v5, v1

    :goto_1e
    if-ge v4, v3, :cond_31

    aget-object v6, v2, v4

    .line 4
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->isSynthetic()Z

    move-result v7

    if-eqz v7, :cond_29

    goto :goto_2e

    :cond_29
    if-eqz v5, :cond_2d

    move-object v5, v1

    goto :goto_31

    :cond_2d
    move-object v5, v6

    :goto_2e
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_31
    :goto_31
    if-eqz v5, :cond_76

    .line 5
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v2

    if-nez v2, :cond_6e

    const/4 v2, 0x1

    .line 6
    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 7
    :try_start_3d
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_44

    return-object v1

    .line 8
    :cond_44
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4f

    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 8
    :cond_4f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_55
    .catch Ljava/lang/NullPointerException; {:try_start_3d .. :try_end_55} :catch_65
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3d .. :try_end_55} :catch_5e
    .catch Ljava/lang/IllegalAccessException; {:try_start_3d .. :try_end_55} :catch_55

    :catch_55
    move-exception p0

    .line 10
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Could not access the field in remoteBinder."

    .line 11
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_5e
    move-exception p0

    .line 13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 12
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_65
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Binder object is null."

    .line 13
    invoke-direct {p1, v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 15
    :cond_6e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The concrete class implementing IObjectWrapper must have exactly one declared *private* field for the wrapped object. Preferably, this is an instance of the ObjectWrapper<T> class."

    .line 14
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_76
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The concrete class implementing IObjectWrapper must have exactly *one* declared private field for the wrapped object.  Preferably, this is an instance of the ObjectWrapper<T> class."

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_7f

    :goto_7e
    throw p0

    :goto_7f
    goto :goto_7e
.end method
