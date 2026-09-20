.class Lcom/applovin/impl/sdk/e/e;
.super Lcom/applovin/impl/sdk/e/c;
.source "SourceFile"


# instance fields
.field private final b:Lcom/applovin/impl/c/a;


# direct methods
.method public constructor <init>(Lcom/applovin/impl/c/a;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdLoadListener;)V
    .locals 1

    const-string v0, "TaskCacheVastAd"

    .line 32
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/applovin/impl/sdk/e/c;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/ad/e;Lcom/applovin/impl/sdk/p;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 34
    iput-object p1, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    return-void
.end method

.method private j()V
    .locals 8

    .line 111
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aW()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 115
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aQ()Lcom/applovin/impl/c/d;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 118
    invoke-virtual {v0}, Lcom/applovin/impl/c/d;->b()Lcom/applovin/impl/c/i;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 122
    invoke-virtual {v0}, Lcom/applovin/impl/c/i;->b()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 124
    :goto_0
    invoke-virtual {v0}, Lcom/applovin/impl/c/i;->c()Ljava/lang/String;

    move-result-object v2

    .line 126
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v2, "Companion ad does not have any resources attached. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 128
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/applovin/impl/c/i;->a()Lcom/applovin/impl/c/i$a;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/c/i$a;->b:Lcom/applovin/impl/c/i$a;

    const-string v5, "..."

    const/4 v6, 0x1

    if-ne v3, v4, :cond_6

    .line 130
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Caching static companion ad at "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/sdk/e/e;->b(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 135
    invoke-virtual {v0, v1}, Lcom/applovin/impl/c/i;->a(Landroid/net/Uri;)V

    .line 136
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/c/a;->a(Z)V

    goto/16 :goto_2

    .line 140
    :cond_5
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v2, "Failed to cache static companion ad"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 143
    :cond_6
    invoke-virtual {v0}, Lcom/applovin/impl/c/i;->a()Lcom/applovin/impl/c/i$a;

    move-result-object v3

    sget-object v4, Lcom/applovin/impl/c/i$a;->d:Lcom/applovin/impl/c/i$a;

    if-ne v3, v4, :cond_c

    .line 146
    invoke-static {v1}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 148
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "Begin caching HTML companion ad. Fetching from "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    :cond_7
    invoke-virtual {p0, v1}, Lcom/applovin/impl/sdk/e/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    invoke-static {v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 156
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v4, "HTML fetched. Caching HTML now..."

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :cond_8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/c/i;->a(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/c/a;->a(Z)V

    goto/16 :goto_2

    .line 163
    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Unable to load companion ad resources from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 169
    :cond_a
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Caching provided HTML for companion ad. No fetch required. HTML: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {p0, v2, v1, v3}, Lcom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/e;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/applovin/impl/c/i;->a(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0, v6}, Lcom/applovin/impl/c/a;->a(Z)V

    goto :goto_2

    .line 174
    :cond_c
    invoke-virtual {v0}, Lcom/applovin/impl/c/i;->a()Lcom/applovin/impl/c/i$a;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/c/i$a;->c:Lcom/applovin/impl/c/i$a;

    if-ne v0, v1, :cond_10

    .line 177
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v2, "Skip caching of iFrame resource..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 187
    :cond_d
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v2, "Failed to retrieve non-video resources from companion ad. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 192
    :cond_e
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v2, "No companion ad provided. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 197
    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v2, "Companion ad caching disabled. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    :goto_2
    return-void
.end method

.method private k()V
    .locals 6

    .line 203
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aX()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 208
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aO()Lcom/applovin/impl/c/n;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 211
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aP()Lcom/applovin/impl/c/o;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 214
    invoke-virtual {v0}, Lcom/applovin/impl/c/o;->b()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 217
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lcom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;Ljava/util/List;Z)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 220
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Video file successfully cached into: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_1
    invoke-virtual {v0, v1}, Lcom/applovin/impl/c/o;->a(Landroid/net/Uri;)V

    goto :goto_0

    .line 225
    :cond_2
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to cache video file: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 233
    :cond_3
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v2, "Video caching disabled. Skipping..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private l()V
    .locals 5

    .line 239
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aV()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 245
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Begin caching HTML template. Fetching from "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v3}, Lcom/applovin/impl/c/a;->aV()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aV()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v1}, Lcom/applovin/impl/c/a;->I()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v2}, Lcom/applovin/impl/c/a;->shouldUrlEncodeResourcePath()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/e/e;->c(Ljava/lang/String;Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 250
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->aU()Ljava/lang/String;

    move-result-object v0

    .line 254
    :goto_0
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 256
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v1}, Lcom/applovin/impl/c/a;->I()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {p0, v0, v1, v2}, Lcom/applovin/impl/sdk/e/e;->a(Ljava/lang/String;Ljava/util/List;Lcom/applovin/impl/sdk/ad/e;)Ljava/lang/String;

    move-result-object v0

    .line 258
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v1}, Lcom/applovin/impl/c/a;->q()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v1}, Lcom/applovin/impl/c/a;->isOpenMeasurementEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 260
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->f:Lcom/applovin/impl/sdk/p;

    invoke-virtual {v1}, Lcom/applovin/impl/sdk/p;->ag()Lcom/applovin/impl/sdk/a/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    :cond_3
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/c/a;->a(Ljava/lang/String;)V

    .line 265
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finish caching HTML template "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v3}, Lcom/applovin/impl/c/a;->aU()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for ad #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v3}, Lcom/applovin/impl/c/a;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 269
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v2, "Unable to load HTML template"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method private m()V
    .locals 4

    .line 275
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    const-string v2, "Caching play & pause images..."

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->aC()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "play"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/e/e;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/e;->c(Landroid/net/Uri;)V

    .line 280
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/ad/e;->aD()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "pause"

    invoke-virtual {p0, v0, v1}, Lcom/applovin/impl/sdk/e/e;->a(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 281
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v1, v0}, Lcom/applovin/impl/sdk/ad/e;->d(Landroid/net/Uri;)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Ad updated with playImageFilename = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/e;->aC()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pauseImageFilename = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/ad/e;->aD()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method h()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->e()V

    .line 297
    invoke-super {p0}, Lcom/applovin/impl/sdk/e/c;->h()V

    return-void
.end method

.method i()V
    .locals 1

    .line 289
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->g()Lcom/applovin/impl/sdk/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/a/g;->c()V

    .line 290
    invoke-super {p0}, Lcom/applovin/impl/sdk/e/c;->i()V

    return-void
.end method

.method public run()V
    .locals 6

    .line 40
    invoke-super {p0}, Lcom/applovin/impl/sdk/e/c;->run()V

    .line 42
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->f()Z

    move-result v0

    .line 43
    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Begin caching for VAST "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string/jumbo v4, "streaming "

    goto :goto_0

    :cond_0
    const-string v4, ""

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ad #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/applovin/impl/sdk/e/e;->a:Lcom/applovin/impl/sdk/ad/e;

    invoke-virtual {v4}, Lcom/applovin/impl/sdk/ad/e;->getAdIdNumber()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->c()V

    .line 47
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->m()V

    if-eqz v0, :cond_6

    .line 53
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->m()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->i()V

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->l()Lcom/applovin/impl/c/a$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/c/a$b;->a:Lcom/applovin/impl/c/a$b;

    if-ne v0, v1, :cond_3

    .line 61
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->j()V

    .line 62
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->l()V

    goto :goto_1

    .line 66
    :cond_3
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->k()V

    .line 70
    :goto_1
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->m()Z

    move-result v0

    if-nez v0, :cond_4

    .line 72
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->i()V

    .line 76
    :cond_4
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->l()Lcom/applovin/impl/c/a$b;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/c/a$b;->a:Lcom/applovin/impl/c/a$b;

    if-ne v0, v1, :cond_5

    .line 78
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->k()V

    goto :goto_2

    .line 82
    :cond_5
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->j()V

    .line 83
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->l()V

    goto :goto_2

    .line 88
    :cond_6
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->j()V

    .line 89
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->k()V

    .line 90
    invoke-direct {p0}, Lcom/applovin/impl/sdk/e/e;->l()V

    .line 92
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->i()V

    .line 95
    :goto_2
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->h:Lcom/applovin/impl/sdk/y;

    iget-object v1, p0, Lcom/applovin/impl/sdk/e/e;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Finished caching VAST ad #"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v3}, Lcom/applovin/impl/c/a;->getAdIdNumber()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v2}, Lcom/applovin/impl/c/a;->getCreatedAtMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 99
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v2, v3}, Lcom/applovin/impl/sdk/d/d;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/p;)V

    .line 100
    iget-object v2, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    iget-object v3, p0, Lcom/applovin/impl/sdk/e/e;->f:Lcom/applovin/impl/sdk/p;

    invoke-static {v0, v1, v2, v3}, Lcom/applovin/impl/sdk/d/d;->a(JLcom/applovin/impl/sdk/AppLovinAdBase;Lcom/applovin/impl/sdk/p;)V

    .line 103
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {p0, v0}, Lcom/applovin/impl/sdk/e/e;->a(Lcom/applovin/impl/sdk/AppLovinAdBase;)V

    .line 105
    iget-object v0, p0, Lcom/applovin/impl/sdk/e/e;->b:Lcom/applovin/impl/c/a;

    invoke-virtual {v0}, Lcom/applovin/impl/c/a;->b()V

    .line 106
    invoke-virtual {p0}, Lcom/applovin/impl/sdk/e/e;->a()V

    return-void
.end method
