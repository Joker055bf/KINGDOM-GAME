.class public final Lcom/onevcat/uniwebview/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

.field public final b:Landroid/app/Activity;

.field public final c:Lcom/onevcat/uniwebview/internal/obfuscated/A;

.field public d:Z

.field public e:Z

.field public f:Landroid/widget/Toast;

.field public final g:Ljava/util/HashMap;

.field public final h:Lcom/onevcat/uniwebview/f;


# direct methods
.method public constructor <init>(Lcom/onevcat/uniwebview/internal/obfuscated/X2;Landroid/app/Activity;Lcom/onevcat/uniwebview/internal/obfuscated/A;)V
    .locals 1

    const-string v0, "messageDispatcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "customizeHeaders"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onevcat/uniwebview/g;->a:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    .line 3
    iput-object p2, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    .line 4
    iput-object p3, p0, Lcom/onevcat/uniwebview/g;->c:Lcom/onevcat/uniwebview/internal/obfuscated/A;

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/g;->d:Z

    .line 7
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/g;->e:Z

    .line 64
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/g;->g:Ljava/util/HashMap;

    .line 65
    new-instance p1, Lcom/onevcat/uniwebview/f;

    invoke-direct {p1, p0}, Lcom/onevcat/uniwebview/f;-><init>(Lcom/onevcat/uniwebview/g;)V

    iput-object p1, p0, Lcom/onevcat/uniwebview/g;->h:Lcom/onevcat/uniwebview/f;

    return-void
.end method

.method public static final a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 405
    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method public static final a(Landroid/widget/EditText;Lcom/onevcat/uniwebview/internal/obfuscated/k;Lcom/onevcat/uniwebview/g;Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p4, "$input"

    invoke-static {p0, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "$task"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "this$0"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 141
    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    .line 142
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "<set-?>"

    .line 143
    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    iput-object p0, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->b:Ljava/lang/String;

    .line 404
    invoke-virtual {p2, p1}, Lcom/onevcat/uniwebview/g;->b(Lcom/onevcat/uniwebview/internal/obfuscated/k;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    const-string v2, "android.intent.action.DOWNLOAD_COMPLETE"

    if-lt v0, v1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onevcat/uniwebview/g;->h:Lcom/onevcat/uniwebview/f;

    new-instance v3, Landroid/content/IntentFilter;

    .line 106
    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 107
    invoke-virtual {v0, v1, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/onevcat/uniwebview/g;->h:Lcom/onevcat/uniwebview/f;

    new-instance v3, Landroid/content/IntentFilter;

    .line 111
    invoke-direct {v3, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :goto_0
    return-void
.end method

.method public final a(Lcom/onevcat/uniwebview/internal/obfuscated/k;)V
    .locals 4

    .line 112
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/g;->e:Z

    if-nez v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/onevcat/uniwebview/g;->b(Lcom/onevcat/uniwebview/internal/obfuscated/k;)V

    return-void

    .line 117
    :cond_0
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 118
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 119
    iget-object v1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->b:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/k;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 125
    iget-object v2, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/onevcat/uniwebview/R$string;->DOWNLOAD_DESCRIPTION:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x108009b

    .line 126
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 127
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const-string v3, "Builder(activity)\n      \u2026     .setCancelable(true)"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v2, [Landroid/widget/EditText;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    .line 128
    invoke-static {v1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/a;->a(Landroid/app/AlertDialog$Builder;[Landroid/widget/EditText;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 129
    new-instance v2, Lcom/onevcat/uniwebview/g$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1, p0}, Lcom/onevcat/uniwebview/g$$ExternalSyntheticLambda0;-><init>(Landroid/widget/EditText;Lcom/onevcat/uniwebview/internal/obfuscated/k;Lcom/onevcat/uniwebview/g;)V

    const p1, 0x104000a

    invoke-virtual {v1, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 135
    new-instance v0, Lcom/onevcat/uniwebview/g$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/onevcat/uniwebview/g$$ExternalSyntheticLambda1;-><init>()V

    const/high16 v1, 0x1040000

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data:"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 41
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 43
    :try_start_0
    invoke-static {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/m0;->a(Ljava/lang/String;)Lcom/onevcat/uniwebview/internal/obfuscated/r;

    move-result-object p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 44
    :cond_0
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/l;

    .line 45
    iget-object v1, p2, Lcom/onevcat/uniwebview/internal/obfuscated/r;->b:[B

    .line 46
    invoke-direct {v0, p1, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/l;-><init>(Ljava/lang/String;[B)V

    if-nez p3, :cond_1

    .line 47
    iget-object p3, p2, Lcom/onevcat/uniwebview/internal/obfuscated/r;->a:Ljava/lang/String;

    if-nez p3, :cond_1

    const-string p3, ""

    .line 49
    :cond_1
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    .line 52
    sget-object p2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {p2}, Lcom/onevcat/uniwebview/internal/obfuscated/w;->a(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 54
    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-static {v1}, Lcom/onevcat/uniwebview/internal/obfuscated/w;->a(Lkotlin/jvm/internal/StringCompanionObject;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const/16 v1, 0x2e

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 56
    :goto_0
    new-instance p3, Lcom/onevcat/uniwebview/internal/obfuscated/k;

    invoke-direct {p3, v0, p2, p4}, Lcom/onevcat/uniwebview/internal/obfuscated/k;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/n;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, p3

    goto :goto_1

    :catch_0
    move-exception p2

    .line 57
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 58
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Failed to parse data url: "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, ". Error: "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "message"

    .line 59
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p3, p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    :cond_3
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_1

    .line 94
    :cond_4
    invoke-static {p1, p2, p3}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 95
    new-instance v3, Lcom/onevcat/uniwebview/internal/obfuscated/k;

    new-instance p3, Lcom/onevcat/uniwebview/internal/obfuscated/m;

    invoke-direct {p3, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/m;-><init>(Ljava/lang/String;)V

    const-string p1, "fileName"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p3, p2, p4}, Lcom/onevcat/uniwebview/internal/obfuscated/k;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/n;Ljava/lang/String;Z)V

    :goto_1
    if-eqz v3, :cond_5

    .line 96
    invoke-virtual {p0, v3}, Lcom/onevcat/uniwebview/g;->a(Lcom/onevcat/uniwebview/internal/obfuscated/k;)V

    goto :goto_2

    .line 98
    :cond_5
    iget-object p1, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/onevcat/uniwebview/R$string;->INVALID_URL:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method public final b(Lcom/onevcat/uniwebview/internal/obfuscated/k;)V
    .locals 9

    .line 1
    iget-object v0, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->a:Lcom/onevcat/uniwebview/internal/obfuscated/n;

    .line 2
    instance-of v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/m;

    const-string v2, "payload"

    const-string v3, "method"

    const/4 v4, 0x0

    const-string v5, "0"

    if-eqz v1, :cond_3

    .line 3
    new-instance v0, Landroid/app/DownloadManager$Request;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    .line 5
    invoke-virtual {v0}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 7
    iget-object v6, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->b:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v6}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 9
    iget-object v6, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->b:Ljava/lang/String;

    .line 10
    invoke-virtual {v0, v6}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 11
    iget-object v6, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    sget-object v7, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    .line 12
    iget-object v8, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->b:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v6, v7, v8}, Landroid/app/DownloadManager$Request;->setDestinationInExternalFilesDir(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 15
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/k;->a()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "Cookie"

    .line 16
    invoke-virtual {v0, v7, v6}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 18
    iget-object v6, p0, Lcom/onevcat/uniwebview/g;->c:Lcom/onevcat/uniwebview/internal/obfuscated/A;

    invoke-virtual {v6}, Lcom/onevcat/uniwebview/internal/obfuscated/A;->invoke()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v8, v7}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_0

    .line 22
    :cond_0
    iget-object v6, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    const-string v7, "download"

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 23
    instance-of v7, v6, Landroid/app/DownloadManager;

    if-eqz v7, :cond_5

    .line 24
    check-cast v6, Landroid/app/DownloadManager;

    invoke-virtual {v6, v0}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 25
    iget-object v6, p0, Lcom/onevcat/uniwebview/g;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v0, p0, Lcom/onevcat/uniwebview/g;->f:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/onevcat/uniwebview/R$string;->DOWNLOAD_STARTED:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/onevcat/uniwebview/g;->f:Landroid/widget/Toast;

    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 30
    :cond_2
    iget-boolean v0, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->c:Z

    if-eqz v0, :cond_5

    .line 31
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    invoke-virtual {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/k;->a()Ljava/lang/String;

    move-result-object v1

    .line 32
    iget-object p1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->b:Ljava/lang/String;

    .line 33
    invoke-direct {v0, v1, v5, p1, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 34
    iget-object p1, p0, Lcom/onevcat/uniwebview/g;->a:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->m:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 135
    :cond_3
    instance-of v1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/l;

    if-eqz v1, :cond_5

    const-string v1, "null cannot be cast to non-null type com.onevcat.uniwebview.DownloadTaskType.DataUrl"

    .line 136
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/onevcat/uniwebview/internal/obfuscated/l;

    .line 137
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/k;->a()Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-boolean v6, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->c:Z

    if-eqz v6, :cond_4

    .line 139
    new-instance v6, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    .line 140
    iget-object v7, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->b:Ljava/lang/String;

    .line 141
    invoke-direct {v6, v1, v5, v7, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 142
    iget-object v7, p0, Lcom/onevcat/uniwebview/g;->a:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    sget-object v8, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->m:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    invoke-static {v8, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 242
    invoke-virtual {v6}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v8, v6}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    .line 243
    :cond_4
    :try_start_0
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 244
    iget-object v8, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->b:Ljava/lang/String;

    .line 245
    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 246
    iget-object v0, v0, Lcom/onevcat/uniwebview/internal/obfuscated/l;->b:[B

    .line 247
    invoke-static {v6, v0}, Lkotlin/io/FilesKt;->writeBytes(Ljava/io/File;[B)V

    .line 248
    iget-boolean p1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/k;->c:Z

    if-eqz p1, :cond_5

    .line 249
    new-instance p1, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const-string v6, "file.absolutePath"

    invoke-static {v0, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 250
    invoke-direct {p1, v1, v5, v0, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 251
    iget-object v0, p0, Lcom/onevcat/uniwebview/g;->a:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    sget-object v4, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->n:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 252
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 351
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 352
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to download base64 data: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "message"

    .line 354
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v1, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method
