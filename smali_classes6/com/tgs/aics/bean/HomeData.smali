.class public Lcom/tgs/aics/bean/HomeData;
.super Lcom/tgs/aics/bean/BaseBean;
.source "HomeData.java"


# instance fields
.field private helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

.field private importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

.field private selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpCenterBean()Lcom/tgs/aics/bean/HelpCenterBean;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/tgs/aics/bean/HomeData;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    return-object v0
.end method

.method public getImportantAttentionBean()Lcom/tgs/aics/bean/ImportantAttentionBean;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/tgs/aics/bean/HomeData;->importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

    return-object v0
.end method

.method public getSelfServiceBean()Lcom/tgs/aics/bean/SelfServiceBean;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/tgs/aics/bean/HomeData;->selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

    return-object v0
.end method

.method public setHelpCenterBean(Lcom/tgs/aics/bean/HelpCenterBean;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/tgs/aics/bean/HomeData;->helpCenterBean:Lcom/tgs/aics/bean/HelpCenterBean;

    return-void
.end method

.method public setImportantAttentionBean(Lcom/tgs/aics/bean/ImportantAttentionBean;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/tgs/aics/bean/HomeData;->importantAttentionBean:Lcom/tgs/aics/bean/ImportantAttentionBean;

    return-void
.end method

.method public setSelfServiceBean(Lcom/tgs/aics/bean/SelfServiceBean;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/tgs/aics/bean/HomeData;->selfServiceBean:Lcom/tgs/aics/bean/SelfServiceBean;

    return-void
.end method
