.class public Lcom/tgs/aics/bean/BaseDataBean;
.super Ljava/lang/Object;
.source "BaseDataBean.java"


# instance fields
.field public code:Ljava/lang/String;

.field public errorCode:Ljava/lang/String;

.field public errorMsg:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public success:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSuccess()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/tgs/aics/bean/BaseDataBean;->success:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tgs/aics/bean/BaseDataBean;->errorMsg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
