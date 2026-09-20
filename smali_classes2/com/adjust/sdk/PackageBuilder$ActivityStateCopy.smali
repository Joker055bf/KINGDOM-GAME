.class Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adjust/sdk/PackageBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityStateCopy"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field public final e:J

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityState;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->a:I

    .line 3
    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->b:I

    .line 4
    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->c:I

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->d:J

    .line 6
    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->e:J

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->f:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->g:Ljava/lang/String;

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    iget v0, p1, Lcom/adjust/sdk/ActivityState;->eventCount:I

    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->a:I

    .line 15
    iget v0, p1, Lcom/adjust/sdk/ActivityState;->sessionCount:I

    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->b:I

    .line 16
    iget v0, p1, Lcom/adjust/sdk/ActivityState;->subsessionCount:I

    iput v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->c:I

    .line 17
    iget-wide v0, p1, Lcom/adjust/sdk/ActivityState;->timeSpent:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->d:J

    .line 18
    iget-wide v0, p1, Lcom/adjust/sdk/ActivityState;->sessionLength:J

    iput-wide v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->e:J

    .line 19
    iget-object v0, p1, Lcom/adjust/sdk/ActivityState;->uuid:Ljava/lang/String;

    iput-object v0, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->f:Ljava/lang/String;

    .line 20
    iget-object p1, p1, Lcom/adjust/sdk/ActivityState;->pushToken:Ljava/lang/String;

    iput-object p1, p0, Lcom/adjust/sdk/PackageBuilder$ActivityStateCopy;->g:Ljava/lang/String;

    return-void
.end method
