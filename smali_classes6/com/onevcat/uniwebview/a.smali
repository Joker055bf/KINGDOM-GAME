.class public final Lcom/onevcat/uniwebview/a;
.super Landroid/webkit/WebView;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/lang/String;

.field public final c:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

.field public final d:Lcom/onevcat/uniwebview/b;

.field public final e:Lcom/onevcat/uniwebview/c;

.field public final f:Lcom/onevcat/uniwebview/g;

.field public g:Ljava/lang/String;

.field public h:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

.field public i:Z

.field public final j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

.field public final k:Ljava/util/LinkedHashMap;

.field public final l:Ljava/util/ArrayDeque;

.field public m:Z

.field public n:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/internal/obfuscated/n0;Landroid/widget/FrameLayout;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/m3;Lcom/onevcat/uniwebview/internal/obfuscated/W2;)V
    .locals 8

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containerView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videoView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSender"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "loadingObserver"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/onevcat/uniwebview/a;->a:Landroid/app/Activity;

    .line 5
    iput-object p4, p0, Lcom/onevcat/uniwebview/a;->b:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/onevcat/uniwebview/a;->c:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    .line 60
    iput-object p4, p0, Lcom/onevcat/uniwebview/a;->g:Ljava/lang/String;

    .line 61
    iput-object p5, p0, Lcom/onevcat/uniwebview/a;->h:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    .line 63
    new-instance p1, Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-direct {p1, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;-><init>(Lcom/onevcat/uniwebview/a;)V

    iput-object p1, p0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    .line 65
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/a;->k:Ljava/util/LinkedHashMap;

    .line 66
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/onevcat/uniwebview/a;->l:Ljava/util/ArrayDeque;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/a;->n:Z

    .line 70
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 71
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 72
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 73
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 74
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p4, p5}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 76
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-virtual {p4, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 80
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    invoke-virtual {p4, p5}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 81
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    .line 82
    sget-boolean v0, Lcom/onevcat/uniwebview/internal/obfuscated/C;->d:Z

    .line 83
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 86
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 88
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    .line 89
    sget-boolean v0, Lcom/onevcat/uniwebview/internal/obfuscated/C;->c:Z

    .line 90
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 91
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    .line 92
    sget-boolean v0, Lcom/onevcat/uniwebview/internal/obfuscated/C;->a:Z

    xor-int/2addr v0, p1

    .line 93
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 94
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p4

    .line 95
    sget-boolean v0, Lcom/onevcat/uniwebview/internal/obfuscated/C;->b:Z

    .line 96
    invoke-virtual {p4, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 98
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p4

    invoke-virtual {p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p4

    .line 99
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_3

    .line 100
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 101
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-lt v1, v2, :cond_2

    goto :goto_0

    :cond_2
    :try_start_0
    const-string v1, "android.webkit.WebSettings"

    .line 104
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "setAppCachePath"

    new-array v3, p1, [Ljava/lang/Class;

    .line 107
    const-class v4, Ljava/lang/String;

    aput-object v4, v3, p5

    .line 108
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 112
    invoke-virtual {v2, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, p1, [Ljava/lang/Object;

    aput-object p4, v3, p5

    .line 113
    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "setAppCacheEnabled"

    new-array v2, p1, [Ljava/lang/Class;

    .line 117
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, p5

    .line 118
    invoke-virtual {v1, p4, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    .line 122
    invoke-virtual {p4, p1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p1, p1, [Ljava/lang/Object;

    .line 123
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v1, p1, p5

    invoke-virtual {p4, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    :catchall_0
    :cond_3
    :goto_0
    new-instance p1, Lcom/onevcat/uniwebview/b;

    .line 125
    iget-object v3, p0, Lcom/onevcat/uniwebview/a;->a:Landroid/app/Activity;

    .line 126
    sget-boolean v7, Lcom/onevcat/uniwebview/internal/obfuscated/C;->f:Z

    move-object v2, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    .line 127
    invoke-direct/range {v2 .. v7}, Lcom/onevcat/uniwebview/b;-><init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/a;Lcom/onevcat/uniwebview/internal/obfuscated/n0;Landroid/widget/FrameLayout;Z)V

    iput-object p1, p0, Lcom/onevcat/uniwebview/a;->d:Lcom/onevcat/uniwebview/b;

    .line 134
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 136
    new-instance p1, Lcom/onevcat/uniwebview/c;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "context"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p2, p0, p6}, Lcom/onevcat/uniwebview/c;-><init>(Landroid/content/Context;Lcom/onevcat/uniwebview/a;Lcom/onevcat/uniwebview/internal/obfuscated/W2;)V

    iput-object p1, p0, Lcom/onevcat/uniwebview/a;->e:Lcom/onevcat/uniwebview/c;

    .line 137
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 139
    new-instance p1, Lcom/onevcat/uniwebview/g;

    .line 140
    iget-object p2, p0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    iget-object p3, p0, Lcom/onevcat/uniwebview/a;->a:Landroid/app/Activity;

    .line 141
    new-instance p4, Lcom/onevcat/uniwebview/internal/obfuscated/A;

    invoke-direct {p4, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/A;-><init>(Lcom/onevcat/uniwebview/a;)V

    .line 142
    invoke-direct {p1, p2, p3, p4}, Lcom/onevcat/uniwebview/g;-><init>(Lcom/onevcat/uniwebview/internal/obfuscated/X2;Landroid/app/Activity;Lcom/onevcat/uniwebview/internal/obfuscated/A;)V

    iput-object p1, p0, Lcom/onevcat/uniwebview/a;->f:Lcom/onevcat/uniwebview/g;

    .line 145
    invoke-virtual {p1}, Lcom/onevcat/uniwebview/g;->a()V

    .line 146
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/a;->a()V

    const-string p1, "webView"

    .line 147
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 149
    new-instance p2, Lcom/onevcat/uniwebview/internal/obfuscated/I;

    invoke-direct {p2, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/I;-><init>(Lcom/onevcat/uniwebview/a;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p3, "messageProvider"

    .line 150
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, p3, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Lkotlin/jvm/functions/Function0;)V

    .line 175
    new-instance p1, Lcom/onevcat/uniwebview/internal/obfuscated/O;

    invoke-direct {p1, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/O;-><init>(Lcom/onevcat/uniwebview/a;)V

    .line 176
    new-instance p2, Lcom/onevcat/uniwebview/internal/obfuscated/S;

    invoke-direct {p2, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/S;-><init>(Lcom/onevcat/uniwebview/a;)V

    const-string p3, "_UniWebViewChannelMessageHandler"

    .line 178
    invoke-virtual {p0, p1, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "_UniWebViewSyncCall"

    .line 179
    invoke-virtual {p0, p2, p1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public static final a(Lcom/onevcat/uniwebview/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 2

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 853
    iget-object p2, p0, Lcom/onevcat/uniwebview/a;->f:Lcom/onevcat/uniwebview/g;

    .line 854
    iget-boolean p2, p2, Lcom/onevcat/uniwebview/g;->d:Z

    const-string p5, "message"

    if-nez p2, :cond_0

    .line 855
    sget-object p0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string p2, "Auto download disabled. Ignore download request: "

    .line 857
    invoke-static {p2, p1, p0, p5}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 858
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p0, p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "url"

    .line 859
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x2

    const/4 p6, 0x0

    const-string v0, "blob:"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1, p2, p6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 860
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string p3, "Detected a blob url. Start fetching content: "

    .line 862
    invoke-static {p3, p1, p2, p5}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 863
    sget-object p4, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p2, p4, p3}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 864
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\n                    function uv_downloadBlob(blobUrl, callback) {\n                      fetch(blobUrl)\n                        .then(response => response.blob())\n                        .then(blob => {\n                          const reader = new FileReader();\n                          reader.onloadend = () => {\n                            callback(reader.result);\n                          };\n                          reader.readAsDataURL(blob);\n                        }\n                      )\n                      .catch(error => console.error(\'Error fetching blob:\', error));\n                    }\n                    \n                uv_downloadBlob(\'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "\', function(uri) { UniWebViewBlobHandler.handleDataURI(uri); });"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 866
    new-instance p3, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    .line 870
    :cond_1
    iget-object p0, p0, Lcom/onevcat/uniwebview/a;->f:Lcom/onevcat/uniwebview/g;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/onevcat/uniwebview/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public static final a(Ljava/lang/String;Lcom/onevcat/uniwebview/a;Ljava/lang/String;)V
    .locals 3

    const-string v0, "$identifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 832
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v1, "Receive callback of adding JavaScript: "

    const-string v2, "message"

    .line 834
    invoke-static {v1, p2, v0, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 835
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    const-string v0, "null"

    const/4 v1, 0x1

    .line 836
    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 837
    new-instance p2, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    const-string v0, "0"

    const-string v2, ""

    .line 838
    invoke-direct {p2, p0, v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 839
    sget-object p0, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->o:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p1, p0, p2}, Lcom/onevcat/uniwebview/a;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    goto :goto_0

    .line 841
    :cond_0
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    const-string v2, "it"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-1"

    .line 842
    invoke-direct {v0, p0, v2, p2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 843
    sget-object p0, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->o:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p1, p0, v0}, Lcom/onevcat/uniwebview/a;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    :goto_0
    return-void
.end method

.method public static final a(Ljava/lang/String;Lcom/onevcat/uniwebview/a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, "$identifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callbackName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "null"

    const/4 v1, 0x1

    .line 1388
    invoke-static {p3, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "0"

    const-string v3, ""

    if-eqz v0, :cond_0

    .line 1389
    new-instance p3, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    .line 1390
    invoke-direct {p3, p0, v2, v3, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1391
    iget-object p0, p1, Lcom/onevcat/uniwebview/a;->h:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    invoke-interface {p0, p2, p3}, Lcom/onevcat/uniwebview/internal/obfuscated/m3;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    goto :goto_0

    :cond_0
    const-string v0, "it"

    .line 1393
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v4, "^\"|\"$"

    .line 1394
    invoke-direct {v0, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1395
    invoke-static {p3}, Lcom/onevcat/uniwebview/internal/obfuscated/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1396
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    .line 1397
    invoke-direct {v0, p0, v2, p3, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 1398
    iget-object p0, p1, Lcom/onevcat/uniwebview/a;->h:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    invoke-interface {p0, p2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/m3;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    :goto_0
    return-void
.end method

.method public static final a(Landroid/view/View;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public static final a(Lcom/onevcat/uniwebview/a;Ljava/lang/String;Landroid/view/MenuItem;)Z
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$originalUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 883
    iget-object p2, p0, Lcom/onevcat/uniwebview/a;->f:Lcom/onevcat/uniwebview/g;

    .line 886
    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 887
    iget-boolean p0, p0, Lcom/onevcat/uniwebview/a;->m:Z

    const/4 v1, 0x0

    .line 888
    invoke-virtual {p2, p1, v1, v0, p0}, Lcom/onevcat/uniwebview/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static final b(Ljava/lang/String;Lcom/onevcat/uniwebview/a;Ljava/lang/String;)V
    .locals 5

    const-string v0, "$identifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v1, "Receive callback of evaluating JavaScript: "

    const-string v2, "message"

    .line 450
    invoke-static {v1, p2, v0, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 451
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    const-string v0, "null"

    const/4 v1, 0x1

    .line 452
    invoke-static {p2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "0"

    const-string v3, ""

    if-eqz v0, :cond_0

    .line 453
    new-instance p2, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    .line 454
    invoke-direct {p2, p0, v2, v3, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 455
    sget-object p0, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->p:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p1, p0, p2}, Lcom/onevcat/uniwebview/a;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    goto :goto_0

    :cond_0
    const-string v0, "it"

    .line 457
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/text/Regex;

    const-string v4, "^\"|\"$"

    .line 459
    invoke-direct {v0, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, v3}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 461
    invoke-static {p2}, Lcom/onevcat/uniwebview/internal/obfuscated/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 462
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    .line 463
    invoke-direct {v0, p0, v2, p2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 464
    sget-object p0, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->p:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p1, p0, v0}, Lcom/onevcat/uniwebview/a;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    :goto_0
    return-void
.end method

.method public static final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 411
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v1, "Finished fetching content: "

    const-string v2, ". Result: "

    .line 413
    invoke-static {v1, p0, v2, p1, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/z;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "message"

    .line 414
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 440
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, p1, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 850
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/H;

    iget-object v1, p0, Lcom/onevcat/uniwebview/a;->f:Lcom/onevcat/uniwebview/g;

    invoke-direct {v0, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/H;-><init>(Lcom/onevcat/uniwebview/g;)V

    const-string v1, "UniWebViewBlobHandler"

    .line 851
    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 852
    new-instance v0, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda6;-><init>(Lcom/onevcat/uniwebview/a;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    return-void
.end method

.method public final a(IIZ)V
    .locals 4

    if-eqz p3, :cond_0

    .line 1500
    invoke-virtual {p0}, Landroid/view/View;->getScrollX()I

    move-result p3

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput p3, v1, v2

    const/4 p3, 0x1

    aput p1, v1, p3

    const-string p1, "scrollX"

    invoke-static {p0, p1, v1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 1501
    invoke-virtual {p0}, Landroid/view/View;->getScrollY()I

    move-result v1

    new-array v3, v0, [I

    aput v1, v3, v2

    aput p2, v3, p3

    const-string p2, "scrollY"

    invoke-static {p0, p2, v3}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 1502
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    new-array v0, v0, [Landroid/animation/Animator;

    aput-object p1, v0, v2

    aput-object p2, v0, p3

    .line 1503
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 p1, 0x190

    .line 1504
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 1506
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/onevcat/uniwebview/a;)V
    .locals 2

    const-string v0, "popup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1384
    iget-object v0, p1, Lcom/onevcat/uniwebview/a;->b:Ljava/lang/String;

    .line 1385
    iget-object v1, p0, Lcom/onevcat/uniwebview/a;->k:Ljava/util/LinkedHashMap;

    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1386
    iget-object p1, p0, Lcom/onevcat/uniwebview/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 1387
    iget-object p1, p0, Lcom/onevcat/uniwebview/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V
    .locals 3

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "payload"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1399
    iget-object v2, p0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1400
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1499
    invoke-virtual {p2}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->a()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    const-string v0, "popupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onevcat/uniwebview/a;

    if-eqz p1, :cond_0

    const-string v0, "window.close()"

    const/4 v1, 0x0

    .line 407
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "jsString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 821
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v1, "Adding JavaScript string to web view. Requesting string: "

    const-string v2, "message"

    .line 823
    invoke-static {v1, p1, v0, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 824
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 825
    new-instance v0, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda5;

    invoke-direct {v0, p2, p0}, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/onevcat/uniwebview/a;)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "popupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "jsString"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "identifier"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "callbackName"

    invoke-static {p4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 813
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onevcat/uniwebview/a;

    if-nez p1, :cond_0

    .line 814
    new-instance p1, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    const-string p2, "Popup window is unavailable."

    const/4 v0, 0x0

    const-string v1, "-1"

    .line 815
    invoke-direct {p1, p3, v1, p2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 816
    iget-object p2, p0, Lcom/onevcat/uniwebview/a;->h:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    invoke-interface {p2, p4, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/m3;->a(Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    return-void

    .line 819
    :cond_0
    new-instance v0, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda2;

    invoke-direct {v0, p3, p0, p4}, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/onevcat/uniwebview/a;Ljava/lang/String;)V

    invoke-virtual {p1, p2, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 889
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 890
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearHistory()V

    .line 891
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearFormData()V

    if-eqz p2, :cond_0

    .line 895
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object p2

    invoke-virtual {p2}, Landroid/webkit/WebStorage;->deleteAllData()V

    .line 898
    :cond_0
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->B:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    const-string v0, "method"

    .line 899
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parameters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1383
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {v0, p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 4

    .line 471
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "popupWebViews.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 472
    iget-object v1, p0, Lcom/onevcat/uniwebview/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 473
    iget-object v1, p0, Lcom/onevcat/uniwebview/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 474
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onevcat/uniwebview/a;

    .line 475
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_0

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 476
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 477
    :cond_1
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/a;->destroy()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    const-string v0, "popupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onevcat/uniwebview/a;

    if-nez p1, :cond_0

    return-void

    .line 407
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 408
    invoke-virtual {p1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_1
    const-string v0, "window.close()"

    const/4 v1, 0x0

    .line 410
    invoke-virtual {p1, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void
.end method

.method public final c()V
    .locals 5

    .line 12
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "Checking pop up web view in generalGoBack."

    const-string v2, "message"

    .line 14
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v3, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/a;->f()Lcom/onevcat/uniwebview/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 36
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "popupWebView can go back. Performing going back."

    .line 38
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0, v3, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    :cond_0
    const-string v4, "popupWebView cannot go back. Performing close."

    .line 62
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v0, v3, v4}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    const-string v0, "window.close()"

    const/4 v2, 0x0

    .line 83
    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :goto_0
    return-void

    :cond_1
    const-string v1, "Checking main web view can go back..."

    .line 89
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    invoke-virtual {v0, v3, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 111
    invoke-virtual {p0}, Landroid/webkit/WebView;->goBack()V

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "popupName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "jsString"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v1, "Evaluating JavaScript string within web view. Requesting string: "

    const-string v2, "message"

    .line 3
    invoke-static {v1, p1, v0, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 5
    new-instance v0, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p0}, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/onevcat/uniwebview/a;)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->a:Landroid/app/Activity;

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/print/PrintManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/print/PrintManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "message"

    if-nez v0, :cond_1

    .line 2
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "Didn\'t find a valid print service in current activity. Abort printing..."

    .line 4
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 35
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 36
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "The URL of page is null. Abort printing..."

    .line 37
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return-void

    .line 67
    :cond_2
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->createPrintDocumentAdapter(Ljava/lang/String;)Landroid/print/PrintDocumentAdapter;

    move-result-object v1

    const-string v2, "createPrintDocumentAdapter(targetUrl)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    new-instance v2, Landroid/print/PrintAttributes$Builder;

    invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V

    invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;

    move-result-object v2

    const-string v3, "UniWebView Printing"

    .line 73
    invoke-virtual {v0, v3, v1, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;

    return-void
.end method

.method public final destroy()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->f:Lcom/onevcat/uniwebview/g;

    .line 2
    iget-object v1, v0, Lcom/onevcat/uniwebview/g;->b:Landroid/app/Activity;

    .line 3
    iget-object v2, v0, Lcom/onevcat/uniwebview/g;->h:Lcom/onevcat/uniwebview/f;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4
    iget-object v1, v0, Lcom/onevcat/uniwebview/g;->f:Landroid/widget/Toast;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_0
    const/4 v1, 0x0

    .line 5
    iput-object v1, v0, Lcom/onevcat/uniwebview/g;->f:Landroid/widget/Toast;

    .line 6
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public final e()Lcom/onevcat/uniwebview/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->g:Ljava/lang/String;

    iget-object v1, p0, Lcom/onevcat/uniwebview/a;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/g;->b:Lcom/onevcat/uniwebview/internal/obfuscated/g;

    .line 3
    iget-object v1, p0, Lcom/onevcat/uniwebview/a;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "name"

    .line 4
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v0, v0, Lcom/onevcat/uniwebview/internal/obfuscated/g;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/d;

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, v0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final f()Lcom/onevcat/uniwebview/a;
    .locals 2

    .line 1
    :goto_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->l:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcom/onevcat/uniwebview/a;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/onevcat/uniwebview/a;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->l:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCalloutEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/a;->n:Z

    return v0
.end method

.method public final getDownloader()Lcom/onevcat/uniwebview/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->f:Lcom/onevcat/uniwebview/g;

    return-object v0
.end method

.method public final getMessageSender()Lcom/onevcat/uniwebview/internal/obfuscated/m3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->c:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    return-object v0
.end method

.method public final getMessageTargetName$uniwebview_release()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getPopupPageEventEnabled$uniwebview_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/a;->i:Z

    return v0
.end method

.method public final getRootMessageSender$uniwebview_release()Lcom/onevcat/uniwebview/internal/obfuscated/m3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->h:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    return-object v0
.end method

.method public final getSendDownloadEventForContextMenu()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/a;->m:Z

    return v0
.end method

.method public final getUnityMessageDispatcher$uniwebview_release()Lcom/onevcat/uniwebview/internal/obfuscated/l3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    return-object v0
.end method

.method public final getUserAgent()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings.userAgentString"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final get_webChromeClient$uniwebview_release()Lcom/onevcat/uniwebview/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->d:Lcom/onevcat/uniwebview/b;

    return-object v0
.end method

.method public final get_webClient$uniwebview_release()Lcom/onevcat/uniwebview/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->e:Lcom/onevcat/uniwebview/c;

    return-object v0
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UniWebView will load url: \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with headers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/a;->e:Lcom/onevcat/uniwebview/c;

    .line 3
    iget-object v2, v2, Lcom/onevcat/uniwebview/c;->g:Ljava/util/LinkedHashMap;

    .line 4
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    .line 5
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->e:Lcom/onevcat/uniwebview/c;

    const/16 v1, 0xc8

    .line 33
    iput v1, v0, Lcom/onevcat/uniwebview/c;->f:I

    const/4 v1, 0x1

    .line 34
    iput-boolean v1, v0, Lcom/onevcat/uniwebview/c;->d:Z

    const/4 v2, 0x0

    .line 35
    iput-boolean v2, v0, Lcom/onevcat/uniwebview/c;->c:Z

    .line 36
    iput-boolean v2, v0, Lcom/onevcat/uniwebview/c;->e:Z

    .line 37
    iget-object v0, v0, Lcom/onevcat/uniwebview/c;->h:Lcom/onevcat/uniwebview/internal/obfuscated/y;

    .line 38
    iget-object v2, p0, Lcom/onevcat/uniwebview/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/y;->a(Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->e:Lcom/onevcat/uniwebview/c;

    .line 41
    iget-object v0, v0, Lcom/onevcat/uniwebview/c;->g:Ljava/util/LinkedHashMap;

    .line 42
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/a;->n:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 5
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    return-void

    .line 9
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView$HitTestResult;->getExtra()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 10
    :cond_3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "http://"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    .line 11
    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "https://"

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return-void

    .line 16
    :cond_4
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    move-result-object p1

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/onevcat/uniwebview/R$string;->SAVE_IMAGE:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v3, v2, v3, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    .line 18
    new-instance v1, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda0;-><init>(Lcom/onevcat/uniwebview/a;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public final setAllowHTTPAuthPopUpWindow(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->e:Lcom/onevcat/uniwebview/c;

    .line 2
    iput-boolean p1, v0, Lcom/onevcat/uniwebview/c;->l:Z

    return-void
.end method

.method public final setCalloutEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/a;->n:Z

    return-void
.end method

.method public final setDefaultFontSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    int-to-float p1, p1

    div-float/2addr p1, v0

    invoke-static {p1}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setDefaultFontSize(I)V

    return-void
.end method

.method public final setDragInteractionEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Landroid/view/View;->setLongClickable(Z)V

    .line 5
    new-instance p1, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/onevcat/uniwebview/a$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_0
    return-void
.end method

.method public final setMessageTargetName$uniwebview_release(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/a;->g:Ljava/lang/String;

    return-void
.end method

.method public final setOpenLinksInExternalBrowser(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->e:Lcom/onevcat/uniwebview/c;

    .line 2
    iget-object v0, v0, Lcom/onevcat/uniwebview/c;->h:Lcom/onevcat/uniwebview/internal/obfuscated/y;

    .line 3
    iput-boolean p1, v0, Lcom/onevcat/uniwebview/internal/obfuscated/y;->e:Z

    return-void
.end method

.method public final setPopupPageEventEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/a;->i:Z

    return-void
.end method

.method public final setPopupPageEventEnabled$uniwebview_release(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/a;->i:Z

    return-void
.end method

.method public final setRootMessageSender$uniwebview_release(Lcom/onevcat/uniwebview/internal/obfuscated/m3;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onevcat/uniwebview/a;->h:Lcom/onevcat/uniwebview/internal/obfuscated/m3;

    return-void
.end method

.method public final setSendDownloadEventForContextMenu(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/onevcat/uniwebview/a;->m:Z

    return-void
.end method

.method public final setUserAgent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public final stopLoading()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/a;->e:Lcom/onevcat/uniwebview/c;

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcom/onevcat/uniwebview/c;->c:Z

    .line 3
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V

    return-void
.end method
