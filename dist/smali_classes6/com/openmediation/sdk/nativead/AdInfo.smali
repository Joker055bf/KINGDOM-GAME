.class public Lcom/openmediation/sdk/nativead/AdInfo;
.super Ljava/lang/Object;


# instance fields
.field private callToActionText:Ljava/lang/String;

.field private desc:Ljava/lang/String;

.field private isTemplateRender:Z

.field private starRating:D

.field private title:Ljava/lang/String;

.field private type:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallToActionText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/nativead/AdInfo;->callToActionText:Ljava/lang/String;

    return-object v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/nativead/AdInfo;->desc:Ljava/lang/String;

    return-object v0
.end method

.method public getStarRating()D
    .locals 2

    iget-wide v0, p0, Lcom/openmediation/sdk/nativead/AdInfo;->starRating:D

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/nativead/AdInfo;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/openmediation/sdk/nativead/AdInfo;->type:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/nativead/AdInfo;->view:Landroid/view/View;

    return-object v0
.end method

.method public isTemplateRender()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/nativead/AdInfo;->isTemplateRender:Z

    return v0
.end method

.method public setCallToActionText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/nativead/AdInfo;->callToActionText:Ljava/lang/String;

    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/nativead/AdInfo;->desc:Ljava/lang/String;

    return-void
.end method

.method public setStarRating(D)V
    .locals 0

    iput-wide p1, p0, Lcom/openmediation/sdk/nativead/AdInfo;->starRating:D

    return-void
.end method

.method public setTemplateRender(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/nativead/AdInfo;->isTemplateRender:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/nativead/AdInfo;->title:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/openmediation/sdk/nativead/AdInfo;->type:I

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/openmediation/sdk/nativead/AdInfo;->view:Landroid/view/View;

    return-void
.end method
