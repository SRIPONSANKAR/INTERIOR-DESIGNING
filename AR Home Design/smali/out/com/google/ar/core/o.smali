.class final Lcom/google/ar/core/o;
.super Ljava/lang/Object;
.source "ImageMetadata.java"


# instance fields
.field a:J

.field b:I

.field c:I


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/o;->a:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/ar/core/o;->b:I

    iput v0, p0, Lcom/google/ar/core/o;->c:I

    return-void
.end method
