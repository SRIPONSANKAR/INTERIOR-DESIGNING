.class final Lcom/unity3d/player/UnityPlayer$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setSoftInputStr(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$7;->b:Lcom/unity3d/player/UnityPlayer;

    iput-object p2, p0, Lcom/unity3d/player/UnityPlayer$7;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/k;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->a:Ljava/lang/String;

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/k;

    iget-object v1, p0, Lcom/unity3d/player/UnityPlayer$7;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/unity3d/player/k;->a(Ljava/lang/String;)V

    :cond_13
    return-void
.end method
