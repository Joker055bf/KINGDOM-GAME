.class Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/debugger/ui/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->initialize(Ljava/util/List;Lcom/applovin/impl/sdk/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/applovin/impl/sdk/p;

.field final synthetic c:Lcom/applovin/impl/mediation/debugger/ui/testmode/b;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/testmode/b;Ljava/util/List;Lcom/applovin/impl/sdk/p;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->c:Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->b:Lcom/applovin/impl/sdk/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 2

    .line 95
    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->a:Ljava/util/List;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->b()I

    move-result p1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/mediation/debugger/b/c/b;

    .line 96
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->h()Ljava/lang/String;

    move-result-object p2

    .line 97
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 99
    invoke-static {p2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a(Z)V

    .line 102
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a(Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->c:Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->getSdk()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->ab()Lcom/applovin/impl/sdk/m;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/applovin/impl/sdk/m;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a(Z)V

    .line 108
    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->b:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a(Ljava/lang/String;)V

    .line 109
    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->c:Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->getSdk()Lcom/applovin/impl/sdk/p;

    move-result-object p2

    invoke-virtual {p2}, Lcom/applovin/impl/sdk/p;->ab()Lcom/applovin/impl/sdk/m;

    move-result-object p2

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/b/c/b;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/applovin/impl/sdk/m;->b(Ljava/lang/String;)V

    .line 112
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/testmode/b$2;->c:Lcom/applovin/impl/mediation/debugger/ui/testmode/b;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/b;->b(Lcom/applovin/impl/mediation/debugger/ui/testmode/b;)Lcom/applovin/impl/mediation/debugger/ui/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/d;->notifyDataSetChanged()V

    return-void
.end method
