.class public Lcom/google/ar/core/RecordingConfig;
.super Ljava/lang/Object;
.source "RecordingConfig.java"


# instance fields
.field nativeHandle:J

.field private final nativeSymbolTableHandle:J

.field private final session:Lcom/google/ar/core/Session;


# direct methods
.method protected constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    iput-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeSymbolTableHandle:J

    return-void
.end method

.method public constructor <init>(Lcom/google/ar/core/Session;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    invoke-static {v0, v1}, Lcom/google/ar/core/RecordingConfig;->nativeCreateRecordingConfig(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    .line 2
    iget-wide v0, p1, Lcom/google/ar/core/Session;->nativeSymbolTableHandle:J

    iput-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeSymbolTableHandle:J

    return-void
.end method

.method private native nativeAddTrack(JJJ)V
.end method

.method private static native nativeCreateRecordingConfig(J)J
.end method

.method private static native nativeDestroyRecordingConfig(JJ)V
.end method

.method private native nativeGetAutoStopOnPause(JJ)Z
.end method

.method private native nativeGetMp4DatasetFilePath(JJ)Ljava/lang/String;
.end method

.method private native nativeGetRecordingRotation(JJ)I
.end method

.method private native nativeSetAutoStopOnPause(JJZ)V
.end method

.method private native nativeSetMp4DatasetFilePath(JJLjava/lang/String;)V
.end method

.method private native nativeSetRecordingRotation(JJI)V
.end method


# virtual methods
.method public addTrack(Lcom/google/ar/core/Track;)Lcom/google/ar/core/RecordingConfig;
    .registers 10

    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    iget-wide v6, p1, Lcom/google/ar/core/Track;->nativeHandle:J

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/google/ar/core/RecordingConfig;->nativeAddTrack(JJJ)V

    return-object p0
.end method

.method protected finalize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-wide v0, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_f

    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeSymbolTableHandle:J

    .line 1
    invoke-static {v4, v5, v0, v1}, Lcom/google/ar/core/RecordingConfig;->nativeDestroyRecordingConfig(JJ)V

    iput-wide v2, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    .line 2
    :cond_f
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getAutoStopOnPause()Z
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/RecordingConfig;->nativeGetAutoStopOnPause(JJ)Z

    move-result v0

    return v0
.end method

.method public getMp4DatasetFilePath()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/RecordingConfig;->nativeGetMp4DatasetFilePath(JJ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordingRotation()I
    .registers 5

    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v0, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v2, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/ar/core/RecordingConfig;->nativeGetRecordingRotation(JJ)I

    move-result v0

    return v0
.end method

.method public setAutoStopOnPause(Z)Lcom/google/ar/core/RecordingConfig;
    .registers 9

    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/RecordingConfig;->nativeSetAutoStopOnPause(JJZ)V

    return-object p0
.end method

.method public setMp4DatasetFilePath(Ljava/lang/String;)Lcom/google/ar/core/RecordingConfig;
    .registers 9

    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/RecordingConfig;->nativeSetMp4DatasetFilePath(JJLjava/lang/String;)V

    return-object p0
.end method

.method public setRecordingRotation(I)Lcom/google/ar/core/RecordingConfig;
    .registers 9

    iget-object v0, p0, Lcom/google/ar/core/RecordingConfig;->session:Lcom/google/ar/core/Session;

    .line 1
    iget-wide v2, v0, Lcom/google/ar/core/Session;->nativeWrapperHandle:J

    iget-wide v4, p0, Lcom/google/ar/core/RecordingConfig;->nativeHandle:J

    move-object v1, p0

    move v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/google/ar/core/RecordingConfig;->nativeSetRecordingRotation(JJI)V

    return-object p0
.end method
