.class Lcom/applovin/impl/b/a/i$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/d;Landroid/os/Bundle;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/b/a/d;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/applovin/impl/b/a/i;


# direct methods
.method constructor <init>(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    iput-object p2, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    iput-object p3, p0, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/applovin/impl/b/a/i$2;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 163
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    const-string v1, "AppLovinSdk"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transitioning to state: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/d;->b()Lcom/applovin/impl/b/a/d$a;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b/a/d$a;->a:Lcom/applovin/impl/b/a/d$a;

    const-wide/16 v3, 0x1

    const/4 v5, 0x1

    if-ne v0, v2, :cond_9

    .line 167
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 169
    new-instance v0, Lcom/applovin/impl/b/a/i$2$1;

    invoke-direct {v0, p0}, Lcom/applovin/impl/b/a/i$2$1;-><init>(Lcom/applovin/impl/b/a/i$2;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 176
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 169
    invoke-static {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    check-cast v0, Lcom/applovin/impl/b/a/e;

    .line 182
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v1, v0}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;)Lcom/applovin/impl/b/a/d;

    .line 185
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v1}, Lcom/applovin/impl/b/a/d;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v1}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v1

    sget-object v2, Lcom/applovin/impl/sdk/c/d;->t:Lcom/applovin/impl/sdk/c/d;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 190
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    .line 191
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 193
    invoke-virtual {v0}, Lcom/applovin/impl/b/a/e;->g()Ljava/util/List;

    move-result-object v3

    .line 194
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/applovin/impl/b/a/f;

    .line 196
    new-instance v6, Lcom/applovin/impl/b/a/i$2$2;

    invoke-direct {v6, p0, v4}, Lcom/applovin/impl/b/a/i$2$2;-><init>(Lcom/applovin/impl/b/a/i$2;Lcom/applovin/impl/b/a/f;)V

    .line 228
    invoke-virtual {v4}, Lcom/applovin/impl/b/a/f;->b()Lcom/applovin/impl/b/a/f$a;

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/b/a/f$a;->b:Lcom/applovin/impl/b/a/f$a;

    if-ne v7, v8, :cond_3

    .line 230
    invoke-virtual {v4}, Lcom/applovin/impl/b/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 232
    :cond_3
    invoke-virtual {v4}, Lcom/applovin/impl/b/a/f;->b()Lcom/applovin/impl/b/a/f$a;

    move-result-object v7

    sget-object v8, Lcom/applovin/impl/b/a/f$a;->c:Lcom/applovin/impl/b/a/f$a;

    if-ne v7, v8, :cond_4

    .line 234
    invoke-virtual {v4}, Lcom/applovin/impl/b/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 238
    :cond_4
    invoke-virtual {v4}, Lcom/applovin/impl/b/a/f;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 242
    :cond_5
    invoke-virtual {v0}, Lcom/applovin/impl/b/a/e;->e()Ljava/lang/String;

    move-result-object v3

    .line 245
    invoke-static {v3}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 247
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 250
    sget v6, Lcom/applovin/sdk/R$string;->applovin_terms_of_service_text:I

    invoke-static {v6}, Lcom/applovin/impl/sdk/p;->a(I)Ljava/lang/String;

    move-result-object v6

    .line 251
    sget v7, Lcom/applovin/sdk/R$string;->applovin_privacy_policy_text:I

    invoke-static {v7}, Lcom/applovin/impl/sdk/p;->a(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    aput-object v6, v8, v2

    aput-object v7, v8, v5

    .line 252
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 253
    invoke-static {v3, v2}, Lcom/applovin/impl/sdk/utils/StringUtils;->containsAtLeastOneSubstring(Ljava/lang/String;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 255
    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v2}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->ae()Lcom/applovin/impl/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/b/a/b;->d()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 258
    new-instance v3, Lcom/applovin/impl/b/a/i$2$3;

    invoke-direct {v3, p0, v2}, Lcom/applovin/impl/b/a/i$2$3;-><init>(Lcom/applovin/impl/b/a/i$2;Landroid/net/Uri;)V

    .line 267
    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 268
    invoke-static {v4, v2, v3, v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    .line 271
    :cond_6
    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v2}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/sdk/p;->ae()Lcom/applovin/impl/b/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/applovin/impl/b/a/b;->c()Landroid/net/Uri;

    move-result-object v2

    .line 272
    new-instance v3, Lcom/applovin/impl/b/a/i$2$4;

    invoke-direct {v3, p0, v2}, Lcom/applovin/impl/b/a/i$2$4;-><init>(Lcom/applovin/impl/b/a/i$2;Landroid/net/Uri;)V

    .line 281
    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 282
    invoke-static {v4, v2, v3, v5}, Lcom/applovin/impl/sdk/utils/StringUtils;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Landroid/text/style/ClickableSpan;Z)V

    goto :goto_1

    :cond_7
    const/4 v4, 0x0

    .line 286
    :cond_8
    :goto_1
    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 287
    invoke-virtual {v0}, Lcom/applovin/impl/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 290
    new-instance v1, Lcom/applovin/impl/b/a/i$2$5;

    invoke-direct {v1, p0, v0}, Lcom/applovin/impl/b/a/i$2$5;-><init>(Lcom/applovin/impl/b/a/i$2;Landroid/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 307
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v1, v0}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 308
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_2

    .line 310
    :cond_9
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/d;->b()Lcom/applovin/impl/b/a/d$a;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b/a/d$a;->b:Lcom/applovin/impl/b/a/d$a;

    if-ne v0, v2, :cond_c

    .line 312
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 314
    new-instance v0, Lcom/applovin/impl/b/a/i$2$6;

    invoke-direct {v0, p0}, Lcom/applovin/impl/b/a/i$2$6;-><init>(Lcom/applovin/impl/b/a/i$2;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 321
    invoke-virtual {v1, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    .line 314
    invoke-static {v0, v1, v2}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void

    .line 327
    :cond_a
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->e(Lcom/applovin/impl/b/a/i;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 329
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    sget-object v1, Lcom/applovin/impl/sdk/c/d;->t:Lcom/applovin/impl/sdk/c/d;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/p;->a(Lcom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    .line 332
    :cond_b
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    move-object v4, v0

    check-cast v4, Lcom/applovin/impl/b/a/h;

    .line 334
    new-instance v0, Lcom/applovin/impl/b/b/e;

    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    iget-object v3, p0, Lcom/applovin/impl/b/a/i$2;->c:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v1}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v5

    new-instance v6, Lcom/applovin/impl/b/a/i$2$7;

    invoke-direct {v6, p0}, Lcom/applovin/impl/b/a/i$2$7;-><init>(Lcom/applovin/impl/b/a/i$2;)V

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/applovin/impl/b/b/e;-><init>(Landroid/app/Activity;Landroid/os/Bundle;Lcom/applovin/impl/b/a/h;Lcom/applovin/impl/sdk/p;Lcom/applovin/impl/b/b/e$a;)V

    .line 377
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-static {v1, v2}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;)Lcom/applovin/impl/b/a/d;

    .line 378
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v1, v0}, Lcom/applovin/impl/b/a/i;->a(Lcom/applovin/impl/b/a/i;Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 380
    invoke-virtual {v0}, Lcom/applovin/impl/b/b/e;->show()V

    goto/16 :goto_2

    .line 382
    :cond_c
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/d;->b()Lcom/applovin/impl/b/a/d$a;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b/a/d$a;->c:Lcom/applovin/impl/b/a/d$a;

    if-ne v0, v2, :cond_e

    .line 384
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    check-cast v0, Lcom/applovin/impl/b/a/g;

    .line 385
    invoke-virtual {v0}, Lcom/applovin/impl/b/a/g;->e()Ljava/lang/String;

    move-result-object v1

    .line 386
    invoke-virtual {v0}, Lcom/applovin/impl/b/a/g;->f()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_d

    .line 389
    invoke-static {v5}, Lcom/applovin/impl/sdk/utils/CollectionUtils;->map(I)Ljava/util/Map;

    move-result-object v2

    :cond_d
    const-string v3, "flow_type"

    const-string/jumbo v4, "unified"

    .line 392
    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    iget-object v3, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v3}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v3

    invoke-virtual {v3}, Lcom/applovin/impl/sdk/p;->G()Lcom/applovin/impl/sdk/EventServiceImpl;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/applovin/impl/sdk/EventServiceImpl;->trackEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 397
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    invoke-static {v1, v0, v2}, Lcom/applovin/impl/b/a/i;->b(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 399
    :cond_e
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/d;->b()Lcom/applovin/impl/b/a/d$a;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b/a/d$a;->d:Lcom/applovin/impl/b/a/d$a;

    if-ne v0, v2, :cond_f

    .line 401
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ae()Lcom/applovin/impl/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/b;->d()Landroid/net/Uri;

    move-result-object v0

    .line 402
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v2}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/Utils;->showWebViewActivity(Landroid/net/Uri;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V

    goto :goto_2

    .line 404
    :cond_f
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/d;->b()Lcom/applovin/impl/b/a/d$a;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b/a/d$a;->e:Lcom/applovin/impl/b/a/d$a;

    if-ne v0, v2, :cond_10

    .line 406
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->ae()Lcom/applovin/impl/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/b;->c()Landroid/net/Uri;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v2}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/Utils;->showWebViewActivity(Landroid/net/Uri;Landroid/app/Activity;Lcom/applovin/impl/sdk/p;)V

    goto :goto_2

    .line 409
    :cond_10
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/d;->b()Lcom/applovin/impl/b/a/d$a;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b/a/d$a;->f:Lcom/applovin/impl/b/a/d$a;

    if-ne v0, v2, :cond_11

    .line 411
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-virtual {v0, v5}, Lcom/applovin/impl/b/a/i;->a(Z)V

    .line 412
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    iget-object v1, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    iget-object v2, p0, Lcom/applovin/impl/b/a/i$2;->b:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/applovin/impl/b/a/i;->b(Lcom/applovin/impl/b/a/i;Lcom/applovin/impl/b/a/d;Landroid/app/Activity;)V

    goto :goto_2

    .line 414
    :cond_11
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->a:Lcom/applovin/impl/b/a/d;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/d;->b()Lcom/applovin/impl/b/a/d$a;

    move-result-object v0

    sget-object v2, Lcom/applovin/impl/b/a/d$a;->g:Lcom/applovin/impl/b/a/d$a;

    if-ne v0, v2, :cond_12

    .line 417
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-virtual {v0}, Lcom/applovin/impl/b/a/i;->b()V

    goto :goto_2

    .line 421
    :cond_12
    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    invoke-static {}, Lcom/applovin/impl/sdk/y;->a()Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/applovin/impl/b/a/i$2;->d:Lcom/applovin/impl/b/a/i;

    invoke-static {v0}, Lcom/applovin/impl/b/a/i;->c(Lcom/applovin/impl/b/a/i;)Lcom/applovin/impl/sdk/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/applovin/impl/sdk/p;->L()Lcom/applovin/impl/sdk/y;

    move-result-object v0

    const-string v2, "No destination consent flow state found!"

    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/y;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :goto_2
    return-void
.end method
