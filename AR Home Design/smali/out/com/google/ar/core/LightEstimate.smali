.class public Lcom/google/ar/core/LightEstimate;
.super Ljava/lang/Object;
.source "LightEstimate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/ar/core/LightEstimate$State;
    }
.end annotation


# instance fields
.field nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    iput-wide v0, p0, Lcom/google/ar/core/LightEstimate;->nativeSymbolTableHandle:J

    return-void
.end method

.method constructor <init>(Lcom/google/ar/core/Session;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    iput-object p1, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/LightEstimate;->nativeCreateLightEstimate(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    .line 2
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    iput-wide v0, p0, Lcom/google/ar/core/LightEstimate;->nativeSymbolTableHandle:J

    return-void
.end method

.method private convertNativeArImageCubemapToArray([J)[Lcom/google/ar/core/ArImage;
    .registers 8

    .line 1
    array-length v0, p1

    new-array v0, v0, [Lcom/google/ar/core/ArImage;

    const/4 v1, 0x0

    .line 2
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_15

    .line 3
    new-instance v2, Lcom/google/ar/core/ArImage;

    iget-object v3, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    aget-wide v4, p1, v1

    invoke-direct {v2, v3, v4, v5}, Lcom/google/ar/core/ArImage;-><init>(Lcom/google/ar/core/Session;J)V

    .line 4
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_15
    return-object v0
.end method

.method private native nativeAcquireEnvironmentalHdrCubeMap(JJ)[J
.end method

.method private static native nativeCreateLightEstimate(J)J
.end method

.method private static native nativeDestroyLightEstimate(JJ)V
.end method

.method private native nativeGetColorCorrection(JJ[FI)V
.end method

.method private native nativeGetEnvironmentalHdrAmbientSphericalHarmonics(JJ[F)V
.end method

.method private native nativeGetEnvironmentalHdrMainLightDirection(JJ[F)V
.end method

.method private native nativeGetEnvironmentalHdrMainLightIntensity(JJ[F)V
.end method

.method private native nativeGetPixelIntensity(JJ)F
.end method

.method private native nativeGetState(JJ)I
.end method

.method private native nativeGetTimestamp(JJ)J
.end method


# virtual methods
.method public acquireEnvironmentalHdrCubeMap()[Lcom/google/ar/core/ArImage;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    .line 2
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/LightEstimate;->nativeAcquireEnvironmentalHdrCubeMap(JJ)[J

    move-result-object v0

    .line 3
    invoke-direct {p0, v0}, Lcom/google/ar/core/LightEstimate;->convertNativeArImageCubemapToArray([J)[Lcom/google/ar/core/ArImage;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    iget-wide v2, p0, Lcom/google/ar/core/LightEstimate;->nativeSymbolTableHandle:J

    .line 1
    invoke-static {v2, v3, v0, v1}, Lcom/google/ar/core/LightEstimate;->nativeDestroyLightEstimate(JJ)V

    .line 2
    :cond_d
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getColorCorrection([FI)V
    .registers 11

    iget-object v0, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/LightEstimate;->nativeGetColorCorrection(JJ[FI)V

    return-void
.end method

.method public getEnvironmentalHdrAmbientSphericalHarmonics()[F
    .registers 8

    const/16 v0, 0x1b

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/LightEstimate;->nativeGetEnvironmentalHdrAmbientSphericalHarmonics(JJ[F)V

    return-object v0
.end method

.method public getEnvironmentalHdrMainLightDirection()[F
    .registers 8

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/LightEstimate;->nativeGetEnvironmentalHdrMainLightDirection(JJ[F)V

    return-object v0
.end method

.method public getEnvironmentalHdrMainLightIntensity()[F
    .registers 8

    const/4 v0, 0x3

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    move-object v1, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/LightEstimate;->nativeGetEnvironmentalHdrMainLightIntensity(JJ[F)V

    return-object v0
.end method

.method public getPixelIntensity()F
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/LightEstimate;->nativeGetPixelIntensity(JJ)F

    move-result v0

    return v0
.end method

.method public getState()Lcom/google/ar/core/LightEstimate$State;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/LightEstimate;->nativeGetState(JJ)I

    move-result v0

    invoke-static {v0}, Lcom/google/ar/core/LightEstimate$State;->forNumber(I)Lcom/google/ar/core/LightEstimate$State;

    move-result-object v0

    return-object v0
.end method

.method public getTimestamp()J
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/LightEstimate;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/LightEstimate;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/LightEstimate;->nativeGetTimestamp(JJ)J

    move-result-wide v0

    return-wide v0
.end method
