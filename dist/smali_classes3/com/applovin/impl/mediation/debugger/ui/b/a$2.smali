.class Lcom/applovin/impl/mediation/debugger/ui/b/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/applovin/impl/mediation/debugger/ui/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/mediation/debugger/ui/b/a;->setListAdapter(Lcom/applovin/impl/mediation/debugger/ui/b/b;Lcom/applovin/impl/sdk/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/a;

.field final synthetic b:Lcom/applovin/impl/mediation/debugger/ui/b/a;


# direct methods
.method constructor <init>(Lcom/applovin/impl/mediation/debugger/ui/b/a;Lcom/applovin/impl/sdk/a;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    iput-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->a:Lcom/applovin/impl/sdk/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/applovin/impl/mediation/debugger/ui/d/a;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 5

    .line 149
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->a()I

    move-result v0

    .line 151
    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->a:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v1

    if-eq v0, v1, :cond_c

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->b:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    .line 152
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto/16 :goto_1

    .line 156
    :cond_0
    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->d:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_a

    .line 158
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->b()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->a:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 160
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerAdUnitsListActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->a:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$1;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$1;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto/16 :goto_2

    :cond_1
    const-string p1, "Please setup or enable your MAX ad units on https://applovin.com."

    .line 173
    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-string v0, "No live ad units"

    invoke-static {v0, p1, p2}, Lcom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 176
    :cond_2
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->b()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->b:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->ordinal()I

    move-result v1

    const-string v2, "Please complete integrations in order to access this."

    const-string v3, "Complete Integrations"

    const-string v4, "Restart Required"

    if-ne v0, v1, :cond_6

    .line 178
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->i()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_4

    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->j()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    goto :goto_0

    .line 198
    :cond_3
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v3, v2, p1}, Lcom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto/16 :goto_2

    .line 180
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->c()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 183
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->m()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v4, p1, p2}, Lcom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 187
    :cond_5
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerTestLiveNetworkActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->a:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$2;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$2;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto/16 :goto_2

    .line 201
    :cond_6
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->b()I

    move-result v0

    sget-object v1, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->c:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    invoke-virtual {v1}, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_9

    .line 203
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->c()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->a()Z

    move-result p1

    if-nez p1, :cond_7

    .line 205
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->getSdk()Lcom/applovin/impl/sdk/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/sdk/p;->av()Lcom/applovin/impl/mediation/debugger/ui/testmode/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/testmode/c;->d()V

    .line 208
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->m()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v4, p1, p2}, Lcom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void

    .line 212
    :cond_7
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/a;->b(Lcom/applovin/impl/mediation/debugger/ui/b/a;)Lcom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 214
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerTestModeNetworkActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->a:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$3;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$3;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto :goto_2

    .line 225
    :cond_8
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v3, v2, p1}, Lcom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_2

    .line 228
    :cond_9
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/d/a;->b()I

    move-result p1

    sget-object p2, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->d:Lcom/applovin/impl/mediation/debugger/ui/b/b$a;

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/b/b$a;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_d

    .line 230
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class p2, Lcom/applovin/mediation/MaxDebuggerAdUnitsListActivity;

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->a:Lcom/applovin/impl/sdk/a;

    new-instance v1, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$4;

    invoke-direct {v1, p0}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$4;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;)V

    invoke-static {p1, p2, v0, v1}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto :goto_2

    .line 240
    :cond_a
    sget-object p1, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->e:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result p1

    if-eq v0, p1, :cond_b

    sget-object p1, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->f:Lcom/applovin/impl/mediation/debugger/ui/b/b$b;

    .line 241
    invoke-virtual {p1}, Lcom/applovin/impl/mediation/debugger/ui/b/b$b;->ordinal()I

    move-result p1

    if-ne v0, p1, :cond_d

    .line 243
    :cond_b
    instance-of p1, p2, Lcom/applovin/impl/mediation/debugger/ui/b/a/a;

    if-eqz p1, :cond_d

    .line 245
    iget-object p1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    const-class v0, Lcom/applovin/mediation/MaxDebuggerDetailActivity;

    iget-object v1, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->a:Lcom/applovin/impl/sdk/a;

    new-instance v2, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$5;

    invoke-direct {v2, p0, p2}, Lcom/applovin/impl/mediation/debugger/ui/b/a$2$5;-><init>(Lcom/applovin/impl/mediation/debugger/ui/b/a$2;Lcom/applovin/impl/mediation/debugger/ui/d/c;)V

    invoke-static {p1, v0, v1, v2}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/content/Context;Ljava/lang/Class;Lcom/applovin/impl/sdk/a;Lcom/applovin/impl/sdk/utils/b$a;)V

    goto :goto_2

    .line 154
    :cond_c
    :goto_1
    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->l()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/applovin/impl/mediation/debugger/ui/d/c;->m()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lcom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {p1, p2, v0}, Lcom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    :cond_d
    :goto_2
    return-void
.end method
