.class Lcom/applovin/impl/sdk/e/t;
.super Lcom/applovin/impl/sdk/e/a;
.source "SourceFile"


# instance fields
.field private final a:Lcom/applovin/impl/c/e;

.field private final b:Lcom/applovin/sdk/AppLovinAdLoadListener;


# direct methods
.method constructor <init>(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/p;)V
    .locals 1

    const-string v0, "TaskRenderVastAd"

    .line 38
    invoke-direct {p0, v0, p3}, Lcom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/p;)V

    .line 40
    iput-object p2, p0, Lcom/applovin/impl/sdk/e/t;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    .line 41
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 47
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/t;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/t;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/t;->g:Ljava/lang/String;

    const-string v2, "Rendering VAST ad..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    invoke-virtual {v0}, Lcom/applovin/impl/c/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 57
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 58
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 60
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    invoke-virtual {v0}, Lcom/applovin/impl/c/e;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-string v3, ""

    const/4 v4, 0x0

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    move-object v4, v3

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/applovin/impl/sdk/utils/t;

    .line 65
    invoke-static {v9}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/sdk/utils/t;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "Wrapper"

    goto :goto_1

    :cond_2
    const-string v10, "InLine"

    .line 67
    :goto_1
    invoke-virtual {v9, v10}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v10

    if-eqz v10, :cond_9

    const-string v9, "AdSystem"

    .line 71
    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v9

    if-eqz v9, :cond_3

    .line 74
    iget-object v11, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v9, v5, v11}, Lcom/applovin/impl/c/j;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/j;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/j;

    move-result-object v5

    :cond_3
    const-string v9, "AdTitle"

    .line 78
    invoke-static {v10, v9, v3}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/sdk/utils/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v9, "Description"

    .line 81
    invoke-static {v10, v9, v4}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/sdk/utils/t;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "Impression"

    .line 84
    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v9, v1, v11, v12}, Lcom/applovin/impl/c/m;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)V

    const-string v9, "ViewableImpression"

    .line 87
    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v9

    if-eqz v9, :cond_4

    const-string v11, "Viewable"

    .line 90
    invoke-virtual {v9, v11}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v9, v1, v11, v12}, Lcom/applovin/impl/c/m;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)V

    :cond_4
    const-string v9, "AdVerifications"

    .line 95
    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v9

    if-eqz v9, :cond_5

    .line 98
    iget-object v11, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v9, v8, v11, v12}, Lcom/applovin/impl/c/c;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/c;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/c;

    move-result-object v8

    :cond_5
    const-string v9, "Error"

    .line 102
    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/t;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v9

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v9, v2, v11, v12}, Lcom/applovin/impl/c/m;->a(Ljava/util/List;Ljava/util/Set;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)V

    const-string v9, "Creatives"

    .line 105
    invoke-virtual {v10, v9}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 108
    invoke-virtual {v9}, Lcom/applovin/impl/sdk/utils/t;->d()Ljava/util/List;

    move-result-object v9

    .line 109
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/applovin/impl/sdk/utils/t;

    const-string v11, "Linear"

    .line 112
    invoke-virtual {v10, v11}, Lcom/applovin/impl/sdk/utils/t;->b(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v11

    if-eqz v11, :cond_7

    .line 115
    iget-object v10, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v11, v6, v10, v12}, Lcom/applovin/impl/c/n;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/n;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/n;

    move-result-object v6

    goto :goto_2

    :cond_7
    const-string v11, "CompanionAds"

    .line 121
    invoke-virtual {v10, v11}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v11

    if-eqz v11, :cond_8

    const-string v10, "Companion"

    .line 125
    invoke-virtual {v11, v10}, Lcom/applovin/impl/sdk/utils/t;->c(Ljava/lang/String;)Lcom/applovin/impl/sdk/utils/t;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 128
    iget-object v11, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v10, v7, v11, v12}, Lcom/applovin/impl/c/d;->a(Lcom/applovin/impl/sdk/utils/t;Lcom/applovin/impl/c/d;Lcom/applovin/impl/c/e;Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/d;

    move-result-object v7

    goto :goto_2

    .line 134
    :cond_8
    iget-object v11, p0, Lcom/applovin/impl/sdk/e/t;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/t;->h:Lcom/applovin/impl/sdk/y;

    iget-object v12, p0, Lcom/applovin/impl/sdk/e/t;->g:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Received and will skip rendering for an unidentified creative: "

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v12, v10}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 140
    :cond_9
    iget-object v10, p0, Lcom/applovin/impl/sdk/e/t;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/applovin/impl/sdk/e/t;->h:Lcom/applovin/impl/sdk/y;

    iget-object v11, p0, Lcom/applovin/impl/sdk/e/t;->g:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Did not find wrapper or inline response for node: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v11, v9}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 148
    :cond_a
    new-instance v0, Lcom/applovin/impl/c/a$a;

    invoke-direct {v0}, Lcom/applovin/impl/c/a$a;-><init>()V

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    .line 149
    invoke-virtual {v0, v9}, Lcom/applovin/impl/c/a$a;->a(Lcom/applovin/impl/sdk/p;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    .line 150
    invoke-virtual {v9}, Lcom/applovin/impl/c/e;->c()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/applovin/impl/c/a$a;->a(Lorg/json/JSONObject;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    .line 151
    invoke-virtual {v9}, Lcom/applovin/impl/c/e;->d()Lorg/json/JSONObject;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/applovin/impl/c/a$a;->b(Lorg/json/JSONObject;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    .line 152
    invoke-virtual {v9}, Lcom/applovin/impl/c/e;->e()Lcom/applovin/impl/sdk/ad/b;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/applovin/impl/c/a$a;->a(Lcom/applovin/impl/sdk/ad/b;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    iget-object v9, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    .line 153
    invoke-virtual {v9}, Lcom/applovin/impl/c/e;->f()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Lcom/applovin/impl/c/a$a;->a(J)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 154
    invoke-virtual {v0, v3}, Lcom/applovin/impl/c/a$a;->a(Ljava/lang/String;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 155
    invoke-virtual {v0, v4}, Lcom/applovin/impl/c/a$a;->b(Ljava/lang/String;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v5}, Lcom/applovin/impl/c/a$a;->a(Lcom/applovin/impl/c/j;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v6}, Lcom/applovin/impl/c/a$a;->a(Lcom/applovin/impl/c/n;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 158
    invoke-virtual {v0, v7}, Lcom/applovin/impl/c/a$a;->a(Lcom/applovin/impl/c/d;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v8}, Lcom/applovin/impl/c/a$a;->a(Lcom/applovin/impl/c/c;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 160
    invoke-virtual {v0, v1}, Lcom/applovin/impl/c/a$a;->a(Ljava/util/Set;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 161
    invoke-virtual {v0, v8}, Lcom/applovin/impl/c/a$a;->a(Lcom/applovin/impl/c/c;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 162
    invoke-virtual {v0, v2}, Lcom/applovin/impl/c/a$a;->b(Ljava/util/Set;)Lcom/applovin/impl/c/a$a;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/applovin/impl/c/a$a;->a()Lcom/applovin/impl/c/a;

    move-result-object v0

    .line 166
    invoke-static {v0}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/c/a;)Lcom/applovin/impl/c/f;

    move-result-object v1

    if-nez v1, :cond_f

    .line 169
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/t;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/t;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/t;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Finished rendering VAST ad: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :cond_b
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/a/g;->b()V

    .line 173
    new-instance v1, Lcom/applovin/impl/sdk/e/e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/t;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    invoke-direct {v1, v0, v2, v3}, Lcom/applovin/impl/sdk/e/e;-><init>(Lcom/applovin/impl/c/a;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 175
    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->i:Lcom/applovin/impl/sdk/e/o$a;

    .line 176
    iget-object v3, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    sget-object v4, Lcom/applovin/impl/sdk/c/b;->bv:Lcom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 178
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->REGULAR:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v3, v4, :cond_c

    .line 180
    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->f:Lcom/applovin/impl/sdk/e/o$a;

    goto :goto_3

    .line 182
    :cond_c
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v3

    sget-object v4, Lcom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v3, v4, :cond_d

    .line 184
    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->g:Lcom/applovin/impl/sdk/e/o$a;

    goto :goto_3

    .line 186
    :cond_d
    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->getType()Lcom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v3, Lcom/applovin/sdk/AppLovinAdType;->NATIVE:Lcom/applovin/sdk/AppLovinAdType;

    if-ne v0, v3, :cond_e

    .line 188
    sget-object v2, Lcom/applovin/impl/sdk/e/o$a;->h:Lcom/applovin/impl/sdk/e/o$a;

    .line 192
    :cond_e
    :goto_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->M()Lcom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/e/o;->a(Lcom/applovin/impl/sdk/e/a;Lcom/applovin/impl/sdk/e/o$a;)V

    goto :goto_4

    .line 196
    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/t;->a:Lcom/applovin/impl/c/e;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/t;->b:Lcom/applovin/sdk/AppLovinAdLoadListener;

    const/4 v3, -0x6

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/t;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0, v2, v1, v3, v4}, Lcom/applovin/impl/c/m;->a(Lcom/applovin/impl/c/e;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/c/f;ILcom/applovin/impl/sdk/p;)V

    :goto_4
    return-void
.end method
