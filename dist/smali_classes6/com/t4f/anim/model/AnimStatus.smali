.class public final Lcom/t4f/anim/model/AnimStatus;
.super Ljava/lang/Object;
.source "AnimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4f/anim/model/AnimStatus$AnimStatusChangeListener;
    }
.end annotation


# static fields
.field private static final DEFAULT:Lcom/t4f/anim/model/AnimStatus;

.field public static final STATUS_ERROR:I = -0x1

.field public static final STATUS_LOADING:I = 0x0

.field public static final STATUS_PAUSED:I = 0x3

.field public static final STATUS_PLAYING:I = 0x2

.field public static final STATUS_PREPARED:I = 0x1


# instance fields
.field public animStatusChangeListener:Lcom/t4f/anim/model/AnimStatus$AnimStatusChangeListener;

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    new-instance v0, Lcom/t4f/anim/model/AnimStatus;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/t4f/anim/model/AnimStatus;-><init>(I)V

    sput-object v0, Lcom/t4f/anim/model/AnimStatus;->DEFAULT:Lcom/t4f/anim/model/AnimStatus;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/t4f/anim/model/AnimStatus;->status:I

    return-void
.end method

.method public static defaultStatus()Lcom/t4f/anim/model/AnimStatus;
    .locals 1

    .line 61
    sget-object v0, Lcom/t4f/anim/model/AnimStatus;->DEFAULT:Lcom/t4f/anim/model/AnimStatus;

    return-object v0
.end method


# virtual methods
.method public getStatus()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/t4f/anim/model/AnimStatus;->status:I

    return v0
.end method

.method public setStatus(I)V
    .locals 2

    .line 48
    iget v0, p0, Lcom/t4f/anim/model/AnimStatus;->status:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 49
    :cond_0
    iput p1, p0, Lcom/t4f/anim/model/AnimStatus;->status:I

    .line 51
    iget-object p1, p0, Lcom/t4f/anim/model/AnimStatus;->animStatusChangeListener:Lcom/t4f/anim/model/AnimStatus$AnimStatusChangeListener;

    if-eqz p1, :cond_1

    .line 52
    invoke-interface {p1}, Lcom/t4f/anim/model/AnimStatus$AnimStatusChangeListener;->onStatusChange()V

    :cond_1
    return-void
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 3

    .line 70
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "status"

    .line 71
    iget v2, p0, Lcom/t4f/anim/model/AnimStatus;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 72
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "{\"status\":0}"

    return-object v0
.end method
