.class final Lcom/unity3d/player/UnityPlayer$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->setCharacterLimit(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;I)V
    .registers 3

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$8;->b:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$8;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/k;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$8;->b:Lcom/unity3d/player/UnityPlayer;

    iget-object v0, v0, Lcom/unity3d/player/UnityPlayer;->b:Lcom/unity3d/player/k;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$8;->a:I

    invoke-virtual {v0, v1}, Lcom/unity3d/player/k;->a(I)V

    :cond_f
    return-void
.end method
