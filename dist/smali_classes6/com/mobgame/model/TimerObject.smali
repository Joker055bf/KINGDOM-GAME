.class public Lcom/mobgame/model/TimerObject;
.super Ljava/lang/Object;
.source "TimerObject.java"


# instance fields
.field private endTime:Ljava/lang/Long;

.field private id:I

.field private startTime:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/mobgame/model/TimerObject;->id:I

    .line 16
    iput-object p2, p0, Lcom/mobgame/model/TimerObject;->startTime:Ljava/lang/Long;

    .line 17
    iput-object p3, p0, Lcom/mobgame/model/TimerObject;->endTime:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/Long;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/mobgame/model/TimerObject;->endTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/mobgame/model/TimerObject;->id:I

    return v0
.end method

.method public getStartTime()Ljava/lang/Long;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/mobgame/model/TimerObject;->startTime:Ljava/lang/Long;

    return-object v0
.end method

.method public setEndTime(Ljava/lang/Long;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/mobgame/model/TimerObject;->endTime:Ljava/lang/Long;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/mobgame/model/TimerObject;->id:I

    return-void
.end method

.method public setStartTime(Ljava/lang/Long;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/mobgame/model/TimerObject;->startTime:Ljava/lang/Long;

    return-void
.end method
