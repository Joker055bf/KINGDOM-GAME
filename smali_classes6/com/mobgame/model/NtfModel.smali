.class public Lcom/mobgame/model/NtfModel;
.super Ljava/lang/Object;
.source "NtfModel.java"


# instance fields
.field private id:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private noti:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti"
    .end annotation
.end field

.field private title:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/mobgame/model/NtfModel;->id:I

    return v0
.end method

.method public getNoti()Z
    .locals 1

    .line 34
    iget-boolean v0, p0, Lcom/mobgame/model/NtfModel;->noti:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/mobgame/model/NtfModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/mobgame/model/NtfModel;->id:I

    return-void
.end method

.method public setNoti(Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/mobgame/model/NtfModel;->noti:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/mobgame/model/NtfModel;->title:Ljava/lang/String;

    return-void
.end method
