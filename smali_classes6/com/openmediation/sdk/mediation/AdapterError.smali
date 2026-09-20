.class public Lcom/openmediation/sdk/mediation/AdapterError;
.super Ljava/lang/Object;


# instance fields
.field private code:Ljava/lang/Integer;

.field private loadFailFromAdn:Z

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/openmediation/sdk/mediation/AdapterError;->message:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/mediation/AdapterError;->loadFailFromAdn:Z

    iput-object p1, p0, Lcom/openmediation/sdk/mediation/AdapterError;->code:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/mediation/AdapterError;->loadFailFromAdn:Z

    iput-object p1, p0, Lcom/openmediation/sdk/mediation/AdapterError;->code:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/openmediation/sdk/mediation/AdapterError;->message:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/openmediation/sdk/mediation/AdapterError;->loadFailFromAdn:Z

    iput-object p1, p0, Lcom/openmediation/sdk/mediation/AdapterError;->message:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/mediation/AdapterError;->code:Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/openmediation/sdk/mediation/AdapterError;->message:Ljava/lang/String;

    return-object v0
.end method

.method public isLoadFailFromAdn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/openmediation/sdk/mediation/AdapterError;->loadFailFromAdn:Z

    return v0
.end method

.method public setLoadFailFromAdn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/openmediation/sdk/mediation/AdapterError;->loadFailFromAdn:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/openmediation/sdk/mediation/AdapterError;->code:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/openmediation/sdk/mediation/AdapterError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
