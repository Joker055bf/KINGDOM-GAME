.class public final Lcom/onevcat/uniwebview/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/onevcat/uniwebview/internal/obfuscated/W2;
.implements Lcom/onevcat/uniwebview/internal/obfuscated/l0;


# static fields
.field public static y:Landroid/widget/FrameLayout;

.field public static z:Z


# instance fields
.field public final a:Landroid/app/Activity;

.field public final b:Ljava/lang/String;

.field public c:Z

.field public final d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

.field public e:Lcom/onevcat/uniwebview/internal/obfuscated/Y2;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Landroid/view/animation/AnimationSet;

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Ljava/io/ByteArrayOutputStream;

.field public n:Landroid/graphics/Bitmap;

.field public o:Lcom/onevcat/uniwebview/internal/obfuscated/b;

.field public p:Landroid/graphics/Point;

.field public q:Landroid/graphics/Point;

.field public r:Lcom/onevcat/uniwebview/internal/obfuscated/f0;

.field public s:Lcom/onevcat/uniwebview/internal/obfuscated/k3;

.field public t:Lcom/onevcat/uniwebview/internal/obfuscated/e0;

.field public final u:Lcom/onevcat/uniwebview/a;

.field public final v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

.field public final w:Lcom/onevcat/uniwebview/internal/obfuscated/j3;

.field public final x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/i;)V
    .locals 10

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageSender"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/onevcat/uniwebview/d;->a:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/d;->c:Z

    .line 5
    new-instance v3, Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-direct {v3, p1, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/n0;-><init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/d;)V

    iput-object v3, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    .line 6
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/d;->j:Z

    .line 7
    new-instance v1, Lcom/onevcat/uniwebview/internal/obfuscated/e0;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v2, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/e0;-><init>(FFFF)V

    iput-object v1, p0, Lcom/onevcat/uniwebview/d;->t:Lcom/onevcat/uniwebview/internal/obfuscated/e0;

    .line 107
    sget-object v1, Lcom/onevcat/uniwebview/d;->y:Landroid/widget/FrameLayout;

    const/4 v4, 0x4

    const/4 v8, -0x1

    if-nez v1, :cond_0

    .line 108
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 109
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    const/high16 v5, -0x1000000

    .line 110
    invoke-virtual {v1, v5}, Landroid/view/View;->setBackgroundColor(I)V

    .line 113
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 114
    invoke-virtual {p1, v1, v5}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    sput-object v1, Lcom/onevcat/uniwebview/d;->y:Landroid/widget/FrameLayout;

    .line 124
    :cond_0
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setX(F)V

    .line 125
    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setY(F)V

    .line 127
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 128
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/view/View;->setId(I)V

    .line 129
    new-instance v9, Lcom/onevcat/uniwebview/a;

    .line 130
    sget-object v4, Lcom/onevcat/uniwebview/d;->y:Landroid/widget/FrameLayout;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v1, v9

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p0

    .line 131
    invoke-direct/range {v1 .. v7}, Lcom/onevcat/uniwebview/a;-><init>(Landroid/app/Activity;Lcom/onevcat/uniwebview/internal/obfuscated/n0;Landroid/widget/FrameLayout;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/m3;Lcom/onevcat/uniwebview/internal/obfuscated/W2;)V

    .line 132
    new-instance p2, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda7;

    invoke-direct {p2, p0}, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda7;-><init>(Lcom/onevcat/uniwebview/d;)V

    invoke-virtual {v9, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 133
    iput-object v9, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 134
    new-instance p2, Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    invoke-direct {p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/k0;-><init>(Landroid/app/Activity;)V

    .line 135
    invoke-virtual {p2, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->setDelegate(Lcom/onevcat/uniwebview/internal/obfuscated/l0;)V

    .line 136
    new-instance p3, Landroid/widget/Toolbar$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {p3, v8, v1}, Landroid/widget/Toolbar$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p3, 0x8

    .line 140
    invoke-virtual {p2, p3}, Landroid/widget/Toolbar;->setVisibility(I)V

    .line 141
    iput-object p2, p0, Lcom/onevcat/uniwebview/d;->v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    .line 142
    new-instance p2, Lcom/onevcat/uniwebview/internal/obfuscated/j3;

    invoke-direct {p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/j3;-><init>(Landroid/app/Activity;)V

    .line 144
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {p3, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 145
    iput-object p2, p0, Lcom/onevcat/uniwebview/d;->w:Lcom/onevcat/uniwebview/internal/obfuscated/j3;

    .line 146
    new-instance p2, Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-direct {p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;-><init>(Landroid/app/Activity;)V

    .line 147
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 148
    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 149
    iput-object p2, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    return-void
.end method

.method public static final a(Lcom/onevcat/uniwebview/d;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1117
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 1118
    sget-object v1, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "UniWebViewTransparencyBridge"

    aput-object v5, v3, v4

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    const-string v3, "(function() {\n          if (window.__uvTransparencyBridgeInstalled) {\n            return;\n          }\n          window.__uvTransparencyBridgeInstalled = true;\n        \n          var MASK_ATTR = \'data-uv-transparency\';\n          var MODE_OPAQUE = \'opaque\';\n          var scheduled = false;\n        \n          function postPayload(payload) {\n            var bridge = window[\'%s\'];\n            if (!bridge || typeof bridge.postMessage !== \'function\') {\n              return;\n            }\n            try {\n              bridge.postMessage(JSON.stringify(payload));\n            } catch (error) {\n              console.error(\'UniWebView transparency payload failed:\', error);\n            }\n          }\n        \n          function isElementVisible(element) {\n            var rect = element.getBoundingClientRect();\n            if (!rect || rect.width === 0 || rect.height === 0) {\n              return false;\n            }\n\n            // Check if element is within viewport bounds\n            var viewportWidth = window.innerWidth || document.documentElement.clientWidth;\n            var viewportHeight = window.innerHeight || document.documentElement.clientHeight;\n\n            // Element is completely outside viewport\n            if (rect.bottom < 0 || rect.top > viewportHeight ||\n                rect.right < 0 || rect.left > viewportWidth) {\n              return false;\n            }\n\n            // Check if element is visible in parent containers\n            var parent = element.parentElement;\n            while (parent && parent !== document.body) {\n              var parentRect = parent.getBoundingClientRect();\n              var parentStyle = window.getComputedStyle(parent);\n\n              // If parent has overflow hidden/auto/scroll, check if element is within parent\'s visible area\n              if (parentStyle.overflow !== \'visible\' &&\n                  parentStyle.overflow !== \'\' &&\n                  parentStyle.overflow !== \'unset\') {\n\n                // Check if element is outside parent\'s visible bounds\n                if (rect.bottom < parentRect.top || rect.top > parentRect.bottom ||\n                    rect.right < parentRect.left || rect.left > parentRect.right) {\n                  return false;\n                }\n              }\n              parent = parent.parentElement;\n            }\n\n            return true;\n          }\n\n          function collect() {\n            scheduled = false;\n            var nodes = document.querySelectorAll(\'[\' + MASK_ATTR + \']\');\n            var regions = [];\n            for (var i = 0; i < nodes.length; i += 1) {\n              var node = nodes[i];\n              if (node.getAttribute(MASK_ATTR) !== MODE_OPAQUE) {\n                continue;\n              }\n              if (!isElementVisible(node)) {\n                continue;\n              }\n              var rect = node.getBoundingClientRect();\n              regions.push({\n                mode: MODE_OPAQUE,\n                x: rect.left,\n                y: rect.top,\n                width: rect.width,\n                height: rect.height\n              });\n            }\n        \n            postPayload({\n              type: \'update\',\n              timestamp: Date.now(),\n              regions: regions,\n              viewportWidth: window.innerWidth,\n              viewportHeight: window.innerHeight,\n              scale: window.devicePixelRatio || 1\n            });\n          }\n        \n          function schedule() {\n            if (scheduled) {\n              return;\n            }\n            scheduled = true;\n            requestAnimationFrame(collect);\n          }\n        \n          document.addEventListener(\'DOMContentLoaded\', collect);\n          window.addEventListener(\'load\', collect);\n          window.addEventListener(\'resize\', schedule);\n          window.addEventListener(\'scroll\', schedule, true);\n        \n          if (typeof MutationObserver !== \'undefined\') {\n            var observer = new MutationObserver(schedule);\n            observer.observe(document.documentElement, { attributes: true, childList: true, subtree: true });\n          }\n        \n          window.__uv_transparency_collect = collect;\n          collect();\n        })();"

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format(locale, format, *args)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1119
    new-instance v2, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda0;-><init>(Lcom/onevcat/uniwebview/d;)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static final a(Lcom/onevcat/uniwebview/d;Ljava/lang/String;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    if-eqz p1, :cond_0

    const-string v1, "null"

    .line 1120
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 1121
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Transparency script injected successfully for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1123
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1143
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, v0, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    goto :goto_0

    .line 1144
    :cond_0
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 1145
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to inject transparency script for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1146
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1175
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, v0, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static final a(Lcom/onevcat/uniwebview/d;ZLjava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$identifier"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1511
    invoke-virtual {p0, p2, p1}, Lcom/onevcat/uniwebview/d;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final a(Ljava/lang/String;Lcom/onevcat/uniwebview/d;)V
    .locals 12

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1176
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "regions"

    .line 1177
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    const-string v2, "scale"

    .line 1178
    iget-object v3, p1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getScale()F

    move-result v3

    float-to-double v3, v3

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 1179
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1180
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    .line 1181
    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v6, "mode"

    .line 1182
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "opaque"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    const-string v6, "x"

    const-wide/16 v7, 0x0

    .line 1185
    invoke-virtual {v5, v6, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v6, v9

    const-string v9, "y"

    .line 1186
    invoke-virtual {v5, v9, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v9, v9

    const-string v10, "width"

    .line 1187
    invoke-virtual {v5, v10, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v10

    double-to-float v10, v10

    const-string v11, "height"

    .line 1188
    invoke-virtual {v5, v11, v7, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    double-to-float v5, v7

    .line 1189
    new-instance v7, Landroid/graphics/RectF;

    add-float/2addr v10, v6

    add-float/2addr v5, v9

    invoke-direct {v7, v6, v9, v10, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1191
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    cmpl-float v3, v0, v1

    if-lez v3, :cond_4

    goto :goto_3

    .line 1193
    :cond_4
    iget-object v0, p1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    cmpl-float v0, v0, v1

    if-lez v0, :cond_5

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_3

    .line 1194
    :cond_6
    iget-object v0, p1, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 1195
    :goto_3
    invoke-virtual {p1, v2, v0}, Lcom/onevcat/uniwebview/d;->a(Ljava/util/List;F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1196
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 1197
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to parse transparency mask payload: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", error: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "message"

    .line 1198
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1227
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, p1, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    :goto_4
    return-void
.end method

.method public static final a(Lcom/onevcat/uniwebview/d;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1257
    iget-boolean p0, p0, Lcom/onevcat/uniwebview/d;->j:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static final b(Lcom/onevcat/uniwebview/d;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iget-object p0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    const-string v0, "window.__uv_transparency_collect && window.__uv_transparency_collect();"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method public static final c(Lcom/onevcat/uniwebview/d;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 2
    sget-boolean v1, Lcom/onevcat/uniwebview/d;->z:Z

    const/4 v2, 0x0

    const v3, 0x461c4000    # 10000.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    if-lt v0, v1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 4
    sget-boolean v1, Lcom/onevcat/uniwebview/d;->z:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    float-to-int v1, v2

    mul-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_7

    .line 5
    :cond_2
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "View height limited to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", using fallback. View rotation/resizing might not work properly."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 34
    sput-boolean v0, Lcom/onevcat/uniwebview/d;->z:Z

    .line 35
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->p:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    if-eqz v0, :cond_4

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_4
    move v0, v1

    :goto_3
    invoke-virtual {p0, v2, v0}, Lcom/onevcat/uniwebview/d;->a(II)V

    .line 36
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->q:Landroid/graphics/Point;

    if-eqz v0, :cond_5

    iget v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_5
    move v2, v1

    :goto_4
    if-eqz v0, :cond_6

    iget v1, v0, Landroid/graphics/Point;->y:I

    :cond_6
    invoke-virtual {p0, v2, v1}, Lcom/onevcat/uniwebview/d;->b(II)V

    :cond_7
    return-void
.end method

.method public static final d(Lcom/onevcat/uniwebview/d;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 57
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "message"

    const-string v2, "Container.setSize: layout completed, syncing shadow again"

    .line 59
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/d;->f()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
    .locals 3

    if-nez p1, :cond_0

    .line 2542
    new-instance p1, Landroid/graphics/Rect;

    .line 2545
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v1

    mul-float/2addr v1, v0

    float-to-int v0, v1

    .line 2546
    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v2

    mul-float/2addr v2, v1

    float-to-int v1, v2

    const/4 v2, 0x0

    .line 2547
    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2553
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(r.width(), \u2026 Bitmap.Config.ARGB_8888)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2554
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 2555
    iget v2, p1, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget p1, p1, Landroid/graphics/Rect;->top:I

    neg-int p1, p1

    int-to-float p1, p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2556
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {p1, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/c3;->draw(Landroid/graphics/Canvas;)V

    return-object v0
.end method

.method public final a()V
    .locals 4

    const/4 v0, 0x0

    .line 2589
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/d;->h:Z

    .line 2590
    invoke-virtual {p0, v0}, Lcom/onevcat/uniwebview/d;->a(Z)V

    .line 2591
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->A:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "method"

    .line 2592
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "parameters"

    const-string v3, ""

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3076
    iget-object v0, v0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {v0, v1, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return-void
.end method

.method public final a(F)V
    .locals 2

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 2557
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    .line 2560
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 2561
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->w:Lcom/onevcat/uniwebview/internal/obfuscated/j3;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 2562
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method public final a(FFF)V
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setRotation(F)V

    .line 1281
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setScaleX(F)V

    .line 1282
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {p1, p3}, Landroid/widget/LinearLayout;->setScaleY(F)V

    .line 1283
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/d;->f()V

    return-void
.end method

.method public final a(II)V
    .locals 6

    .line 1284
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/d;->p:Landroid/graphics/Point;

    .line 1286
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    .line 1287
    sget-boolean v1, Lcom/onevcat/uniwebview/d;->z:Z

    const/4 v2, 0x0

    const v3, 0x461c4000    # 10000.0f

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    neg-float v1, v1

    .line 1288
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setX(F)V

    .line 1289
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    .line 1290
    sget-boolean v1, Lcom/onevcat/uniwebview/d;->z:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    neg-float v1, v1

    .line 1291
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setY(F)V

    int-to-float p1, p1

    int-to-float p2, p2

    .line 1292
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    const-string v1, "view"

    .line 1293
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1294
    new-instance v1, Landroid/graphics/Point;

    .line 1295
    sget-boolean v4, Lcom/onevcat/uniwebview/d;->z:Z

    if-eqz v4, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    add-float/2addr p1, v5

    float-to-int p1, p1

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    :goto_3
    add-float/2addr p2, v2

    float-to-int p2, p2

    .line 1296
    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 1297
    iget p1, v1, Landroid/graphics/Point;->x:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setX(F)V

    .line 1298
    iget p1, v1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 1299
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/d;->f()V

    return-void
.end method

.method public final a(IIII)V
    .locals 4

    .line 1043
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 1044
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting web container frame to {("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "), ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    .line 1045
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1065
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1066
    invoke-virtual {p0, p1, p2}, Lcom/onevcat/uniwebview/d;->a(II)V

    .line 1067
    invoke-virtual {p0, p3, p4}, Lcom/onevcat/uniwebview/d;->b(II)V

    return-void
.end method

.method public final a(Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V
    .locals 6

    const-string v0, "payload"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1068
    iget-object v0, p1, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->d:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "failingURL"

    .line 1069
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1070
    :goto_0
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 1071
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceivedError. URL: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", error code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1072
    iget-object v2, p1, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->b:Ljava/lang/String;

    .line 1073
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", description: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1074
    iget-object v2, p1, Lcom/onevcat/uniwebview/internal/obfuscated/b3;->c:Ljava/lang/String;

    .line 1075
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    .line 1076
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1105
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, v2, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    .line 1107
    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 1108
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/a;->f()Lcom/onevcat/uniwebview/a;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 1109
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v4

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v3

    .line 1110
    :goto_2
    iget-object v2, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 1111
    invoke-virtual {v2}, Lcom/onevcat/uniwebview/a;->f()Lcom/onevcat/uniwebview/a;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1112
    invoke-virtual {v5}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v5

    goto :goto_3

    :cond_3
    move v5, v4

    :goto_3
    if-nez v5, :cond_5

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v3, v4

    .line 1113
    :cond_5
    :goto_4
    invoke-virtual {v0, v1, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a(ZZ)V

    .line 1114
    iput-boolean v4, p0, Lcom/onevcat/uniwebview/d;->h:Z

    .line 1115
    invoke-virtual {p0, v4}, Lcom/onevcat/uniwebview/d;->a(Z)V

    .line 1116
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {v0, v1, p1}, Lcom/onevcat/uniwebview/a;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 6

    .line 46
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    const-string v1, "onPageStarted: "

    const-string v2, "message"

    .line 48
    invoke-static {v1, p1, v0, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 49
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 50
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    .line 51
    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 52
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/a;->f()Lcom/onevcat/uniwebview/a;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 53
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 54
    :goto_1
    iget-object v2, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 55
    invoke-virtual {v2}, Lcom/onevcat/uniwebview/a;->f()Lcom/onevcat/uniwebview/a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 56
    invoke-virtual {v5}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    if-nez v5, :cond_4

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v4

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v3

    .line 57
    :goto_4
    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a(ZZ)V

    .line 58
    iput-boolean v3, p0, Lcom/onevcat/uniwebview/d;->h:Z

    .line 59
    invoke-virtual {p0, v4}, Lcom/onevcat/uniwebview/d;->c(Z)V

    .line 62
    iput-boolean v4, p0, Lcom/onevcat/uniwebview/d;->l:Z

    if-nez p1, :cond_5

    const-string p1, ""

    .line 65
    :cond_5
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->b:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "method"

    .line 66
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "parameters"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 550
    iget-object v0, v0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {v0, v1, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    .line 551
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->c:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 552
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    iget-object v0, v0, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {v0, v1, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;I)V
    .locals 6

    .line 1
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPageFinished. URL: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    .line 31
    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 32
    invoke-virtual {v1}, Lcom/onevcat/uniwebview/a;->f()Lcom/onevcat/uniwebview/a;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    .line 33
    invoke-virtual {v1}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 34
    :goto_1
    iget-object v2, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    .line 35
    invoke-virtual {v2}, Lcom/onevcat/uniwebview/a;->f()Lcom/onevcat/uniwebview/a;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 36
    invoke-virtual {v5}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v5

    goto :goto_2

    :cond_2
    move v5, v4

    :goto_2
    if-nez v5, :cond_4

    invoke-virtual {v2}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v3, v4

    .line 37
    :cond_4
    :goto_3
    invoke-virtual {v0, v1, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/k0;->a(ZZ)V

    .line 38
    iput-boolean v4, p0, Lcom/onevcat/uniwebview/d;->h:Z

    .line 39
    invoke-virtual {p0, v4}, Lcom/onevcat/uniwebview/d;->a(Z)V

    .line 40
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/b3;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, ""

    if-nez p1, :cond_5

    move-object p1, v1

    :cond_5
    const/4 v2, 0x0

    .line 41
    invoke-direct {v0, v1, p2, p1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/b3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 42
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->a:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p1, p2, v0}, Lcom/onevcat/uniwebview/a;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Lcom/onevcat/uniwebview/internal/obfuscated/b3;)V

    .line 43
    iget-boolean p1, p0, Lcom/onevcat/uniwebview/d;->k:Z

    if-eqz p1, :cond_6

    .line 44
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/d;->d()V

    .line 45
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/d;->e()V

    :cond_6
    return-void
.end method

.method public final a(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "parameters"

    const-string v1, "method"

    if-eqz p2, :cond_0

    .line 1512
    iget-object p2, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->r:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1513
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1997
    iget-object p2, p2, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {p2, v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    goto :goto_0

    .line 1998
    :cond_0
    iget-object p2, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    const/4 v2, 0x4

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1999
    iget-object p2, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/n3;->s:Lcom/onevcat/uniwebview/internal/obfuscated/n3;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2000
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2484
    iget-object p2, p2, Lcom/onevcat/uniwebview/a;->j:Lcom/onevcat/uniwebview/internal/obfuscated/X2;

    invoke-virtual {p2, v2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/X2;->a(Lcom/onevcat/uniwebview/internal/obfuscated/n3;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/util/List;F)V
    .locals 10

    .line 1228
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/f0;

    invoke-direct {v0, p1, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/f0;-><init>(Ljava/util/List;F)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/d;->r:Lcom/onevcat/uniwebview/internal/obfuscated/f0;

    .line 1229
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "[]"

    goto :goto_0

    :cond_0
    sget-object v7, Lcom/onevcat/uniwebview/internal/obfuscated/i0;->a:Lcom/onevcat/uniwebview/internal/obfuscated/i0;

    const/4 v2, 0x0

    const-string v3, "["

    const-string v4, "]"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v8, 0x19

    const/4 v9, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v9}, Lkotlin/collections/CollectionsKt;->joinToString$default(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1230
    :goto_0
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 1231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transparency mask updated for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", scale="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    invoke-static {v4, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    const-string v3, "%.3f"

    invoke-static {v2, v3, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "format(locale, format, *args)"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", rects="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1232
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "message"

    .line 1233
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1256
    sget-object p2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, p2, p1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .locals 2

    if-nez p1, :cond_0

    .line 2563
    iget-boolean p1, p0, Lcom/onevcat/uniwebview/d;->g:Z

    if-eqz p1, :cond_1

    .line 2564
    :cond_0
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->e:Lcom/onevcat/uniwebview/internal/obfuscated/Y2;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 2565
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 2566
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "message"

    const-string v1, "Hide progress dialog."

    .line 2567
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2587
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, v0, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 2588
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->e:Lcom/onevcat/uniwebview/internal/obfuscated/Y2;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public final a(FF)Z
    .locals 9

    .line 1258
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-static {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h;->a(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    .line 1259
    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    .line 1260
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-static {v0}, Lcom/onevcat/uniwebview/internal/obfuscated/h;->a(Landroid/view/View;)Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    .line 1261
    iget-object v3, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    add-float/2addr v3, v0

    sub-float/2addr p1, v1

    sub-float/2addr p2, v3

    .line 1268
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getRotation()F

    move-result v0

    float-to-double v0, v0

    neg-double v0, v0

    .line 1269
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    float-to-double v3, p1

    .line 1270
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    float-to-double p1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double/2addr v7, p1

    sub-double/2addr v5, v7

    double-to-float v5, v5

    .line 1271
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v6, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, p1

    add-double/2addr v0, v6

    double-to-float p1, v0

    .line 1274
    iget-object p2, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v0

    mul-float/2addr v0, p2

    div-float/2addr v0, v2

    add-float/2addr v0, v5

    .line 1275
    iget-object p2, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result v1

    mul-float/2addr v1, p2

    div-float/2addr v1, v2

    add-float/2addr v1, p1

    const/4 p1, 0x0

    cmpl-float p2, v0, p1

    if-ltz p2, :cond_0

    .line 1278
    iget-object p2, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object v2, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getScaleX()F

    move-result v2

    mul-float/2addr v2, p2

    cmpg-float p2, v0, v2

    if-gtz p2, :cond_0

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    .line 1279
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->getScaleY()F

    move-result p2

    mul-float/2addr p2, p1

    cmpg-float p1, v1, p2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final a(IIIIFFLjava/lang/String;)Z
    .locals 18

    move-object/from16 v7, p0

    const-string v0, "identifier"

    move-object/from16 v6, p7

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2485
    iget-object v0, v7, Lcom/onevcat/uniwebview/d;->i:Landroid/view/animation/AnimationSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2486
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 2487
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    const-string v3, "Trying to animate web view but an other transition animation is not finished yet. Ignore this one."

    .line 2488
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2517
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return v1

    :cond_0
    const/16 v0, 0x3e8

    int-to-float v0, v0

    mul-float v2, p5, v0

    float-to-long v2, v2

    mul-float v0, v0, p6

    float-to-long v4, v0

    .line 2518
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 2519
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    move/from16 v9, p1

    int-to-float v1, v9

    iget-object v10, v7, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getX()F

    move-result v10

    sub-float/2addr v1, v10

    move/from16 v10, p2

    int-to-float v11, v10

    iget-object v12, v7, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v12}, Landroid/widget/FrameLayout;->getY()F

    move-result v12

    sub-float/2addr v11, v12

    const/4 v12, 0x0

    invoke-direct {v0, v12, v1, v12, v11}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    const/4 v11, 0x1

    .line 2521
    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2522
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2523
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2524
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2525
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/s;

    iget-object v13, v7, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v14

    iget-object v1, v7, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v16

    move-object v12, v0

    move/from16 v15, p3

    move/from16 v17, p4

    invoke-direct/range {v12 .. v17}, Lcom/onevcat/uniwebview/internal/obfuscated/s;-><init>(Landroid/view/View;IIII)V

    .line 2527
    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 2528
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 2529
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 2530
    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 2532
    new-instance v12, Lcom/onevcat/uniwebview/internal/obfuscated/g0;

    move-object v0, v12

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/onevcat/uniwebview/internal/obfuscated/g0;-><init>(Lcom/onevcat/uniwebview/d;IIIILjava/lang/String;)V

    invoke-virtual {v8, v12}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 2541
    iget-object v0, v7, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v0, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return v11
.end method

.method public final a(ZZIFLjava/lang/String;)Z
    .locals 10

    const-string v0, "identifier"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v0}, Lcom/onevcat/uniwebview/a;->get_webChromeClient$uniwebview_release()Lcom/onevcat/uniwebview/b;

    move-result-object v0

    .line 1301
    iget-boolean v0, v0, Lcom/onevcat/uniwebview/b;->f:Z

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 1302
    sget-object p2, Lcom/onevcat/uniwebview/d;->y:Landroid/widget/FrameLayout;

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    move v1, v3

    :cond_1
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return v2

    .line 1307
    :cond_2
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    move v0, v3

    :goto_1
    const-string v4, "message"

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    .line 1308
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 1309
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Showing web view is ignored since it is already visible."

    .line 1310
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1339
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, p3, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return v3

    :cond_4
    if-nez v0, :cond_5

    if-nez p1, :cond_5

    .line 1340
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 1341
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Hiding web view is ignored since it is already invisible."

    .line 1342
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1371
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, p3, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return v3

    .line 1372
    :cond_5
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->i:Landroid/view/animation/AnimationSet;

    if-eqz v0, :cond_6

    .line 1373
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 1374
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "Trying to show or hide web view but an other transition animation is not finished yet. Ignore this one."

    .line 1375
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1404
    sget-object p3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->f:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, p3, p2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return v3

    :cond_6
    if-eqz p1, :cond_7

    .line 1405
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1406
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/d;->h:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0, v3}, Lcom/onevcat/uniwebview/d;->c(Z)V

    goto :goto_2

    .line 1408
    :cond_7
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/d;->b()V

    .line 1409
    invoke-virtual {p0, v3}, Lcom/onevcat/uniwebview/d;->a(Z)V

    .line 1414
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    const/4 v0, 0x5

    new-array v4, v0, [I

    .line 1415
    sget-object v5, Lcom/onevcat/uniwebview/internal/obfuscated/c;->a:[I

    invoke-static {v5, v3, v4, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v3

    :goto_3
    if-ge v5, v0, :cond_a

    .line 1416
    aget v6, v4, v5

    .line 1417
    invoke-static {v6}, Lcom/onevcat/uniwebview/internal/obfuscated/c;->a(I)I

    move-result v7

    if-ne v7, p3, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_a
    move v6, v3

    :goto_4
    if-nez v6, :cond_b

    move v6, v2

    :cond_b
    if-nez p2, :cond_c

    if-eq v6, v2, :cond_19

    :cond_c
    const/4 p3, 0x0

    cmpl-float v0, p4, p3

    if-lez v0, :cond_19

    .line 1418
    new-instance v0, Landroid/view/animation/AnimationSet;

    invoke-direct {v0, v3}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/16 v4, 0x3e8

    int-to-float v4, v4

    mul-float/2addr p4, v4

    float-to-long v4, p4

    .line 1421
    iget-object p4, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    if-nez p2, :cond_d

    const/4 p2, 0x0

    goto :goto_7

    :cond_d
    if-eqz p1, :cond_e

    move p2, p3

    goto :goto_5

    .line 1422
    :cond_e
    invoke-virtual {p4}, Landroid/view/View;->getAlpha()F

    move-result p2

    :goto_5
    if-eqz p1, :cond_f

    const/high16 v7, 0x3f800000    # 1.0f

    goto :goto_6

    :cond_f
    move v7, p3

    .line 1424
    :goto_6
    new-instance v8, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v8, p2, v7}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 1426
    invoke-virtual {v8, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1427
    invoke-virtual {v8, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    move-object p2, v8

    :goto_7
    if-eqz p2, :cond_10

    .line 1428
    invoke-virtual {v0, p2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1429
    :cond_10
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1e

    if-lt p2, v7, :cond_11

    .line 1430
    iget-object p2, p0, Lcom/onevcat/uniwebview/d;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    const-string v7, "activity.window.windowManager.currentWindowMetrics"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1431
    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    const-string v7, "metrics.bounds"

    invoke-static {p2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1432
    new-instance v7, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    invoke-direct {v7, v8, p2}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_8

    .line 1436
    :cond_11
    iget-object p2, p0, Lcom/onevcat/uniwebview/d;->a:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Window;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 1437
    new-instance v7, Landroid/graphics/Point;

    invoke-direct {v7}, Landroid/graphics/Point;-><init>()V

    .line 1438
    invoke-virtual {p2, v7}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 1439
    :goto_8
    invoke-static {v6}, Lcom/onevcat/uniwebview/internal/obfuscated/c;->a(I)I

    move-result p2

    if-eqz p2, :cond_16

    if-eq p2, v2, :cond_15

    const/4 v6, 0x2

    if-eq p2, v6, :cond_14

    const/4 v6, 0x3

    if-eq p2, v6, :cond_13

    if-ne p2, v1, :cond_12

    .line 1459
    iget p2, v7, Landroid/graphics/Point;->x:I

    goto :goto_a

    .line 1458
    :cond_12
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1464
    :cond_13
    iget p2, v7, Landroid/graphics/Point;->y:I

    goto :goto_9

    .line 1467
    :cond_14
    iget p2, v7, Landroid/graphics/Point;->x:I

    neg-int p2, p2

    goto :goto_a

    .line 1468
    :cond_15
    iget p2, v7, Landroid/graphics/Point;->y:I

    neg-int p2, p2

    :goto_9
    move v9, v3

    move v3, p2

    move p2, v9

    goto :goto_a

    :cond_16
    move p2, v3

    :goto_a
    if-ne p1, v2, :cond_17

    .line 1489
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float p2, p2

    int-to-float v3, v3

    invoke-direct {v1, p2, p3, v3, p3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    goto :goto_b

    :cond_17
    if-nez p1, :cond_18

    .line 1490
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    int-to-float p2, p2

    int-to-float v3, v3

    invoke-direct {v1, p3, p2, p3, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1492
    :goto_b
    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 1493
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1494
    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 1497
    iput-object v0, p0, Lcom/onevcat/uniwebview/d;->i:Landroid/view/animation/AnimationSet;

    .line 1499
    new-instance p2, Lcom/onevcat/uniwebview/internal/obfuscated/h0;

    invoke-direct {p2, p0, p1, p5}, Lcom/onevcat/uniwebview/internal/obfuscated/h0;-><init>(Lcom/onevcat/uniwebview/d;ZLjava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1507
    invoke-virtual {p4}, Landroid/view/View;->clearAnimation()V

    .line 1508
    invoke-virtual {p4, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_c

    .line 1509
    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 1510
    :cond_19
    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0, p1, p5}, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda3;-><init>(Lcom/onevcat/uniwebview/d;ZLjava/lang/String;)V

    const-wide/16 p4, 0x1

    invoke-virtual {p2, p3, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_c
    return v2
.end method

.method public final b()V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->a:Landroid/app/Activity;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 75
    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_1
    return-void
.end method

.method public final b(II)V
    .locals 3

    .line 34
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/d;->q:Landroid/graphics/Point;

    .line 36
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 37
    sget-boolean v1, Lcom/onevcat/uniwebview/d;->z:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    goto :goto_1

    :cond_0
    if-nez v1, :cond_4

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const v1, 0x461c4000    # 10000.0f

    :goto_0
    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 41
    :goto_1
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 42
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    const/16 v1, 0x33

    .line 43
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 44
    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 46
    sget-boolean v0, Lcom/onevcat/uniwebview/d;->z:Z

    if-nez v0, :cond_2

    .line 47
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    new-instance v1, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda1;-><init>(Lcom/onevcat/uniwebview/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.LayoutParams"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 60
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 61
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 62
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 64
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->o:Lcom/onevcat/uniwebview/internal/obfuscated/b;

    if-eqz p1, :cond_3

    int-to-float p2, p2

    .line 67
    iput p2, p1, Lcom/onevcat/uniwebview/internal/obfuscated/b;->f:F

    .line 68
    :cond_3
    invoke-virtual {p0}, Lcom/onevcat/uniwebview/d;->f()V

    .line 71
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    new-instance p2, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda2;-><init>(Lcom/onevcat/uniwebview/d;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 72
    :cond_4
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p0}, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;Lcom/onevcat/uniwebview/d;)V

    .line 29
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 30
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->a:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final b(Z)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->v:Lcom/onevcat/uniwebview/internal/obfuscated/k0;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/Toolbar;->setVisibility(I)V

    return-void
.end method

.method public final c()F
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getAlpha()F

    move-result v0

    return v0
.end method

.method public final c(Z)V
    .locals 5

    .line 38
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->e:Lcom/onevcat/uniwebview/internal/obfuscated/Y2;

    const-string v1, "activity.resources.getString(R.string.LOADING)"

    if-nez v0, :cond_1

    .line 39
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/Y2;

    iget-object v2, p0, Lcom/onevcat/uniwebview/d;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/onevcat/uniwebview/d;->f:Ljava/lang/String;

    if-nez v3, :cond_0

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/onevcat/uniwebview/R$string;->LOADING:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {v0, v2, v3}, Lcom/onevcat/uniwebview/internal/obfuscated/Y2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/onevcat/uniwebview/d;->e:Lcom/onevcat/uniwebview/internal/obfuscated/Y2;

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->e:Lcom/onevcat/uniwebview/internal/obfuscated/Y2;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lcom/onevcat/uniwebview/d;->c:Z

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_2
    if-nez p1, :cond_3

    .line 43
    iget-boolean p1, p0, Lcom/onevcat/uniwebview/d;->g:Z

    if-eqz p1, :cond_7

    .line 44
    :cond_3
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->d:Lcom/onevcat/uniwebview/internal/obfuscated/n0;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    .line 45
    sget-object p1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Show progress dialog."

    const-string v2, "message"

    .line 47
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    sget-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {p1, v3, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 68
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->e:Lcom/onevcat/uniwebview/internal/obfuscated/Y2;

    if-eqz p1, :cond_6

    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->f:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lcom/onevcat/uniwebview/R$string;->LOADING:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    :cond_4
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    iget-object p1, p1, Lcom/onevcat/uniwebview/internal/obfuscated/Y2;->a:Landroid/widget/TextView;

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/onevcat/uniwebview/d;->e:Lcom/onevcat/uniwebview/internal/obfuscated/Y2;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_7
    return-void
.end method

.method public final d()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/onevcat/uniwebview/d;->l:Z

    const-string v1, "message"

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Transparency script already injected for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    const-string v4, ", skipping"

    .line 4
    invoke-static {v2, v3, v4, v0, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/c0;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Lcom/onevcat/uniwebview/internal/obfuscated/p;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->b:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Injecting transparency script for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v1, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->s:Lcom/onevcat/uniwebview/internal/obfuscated/k3;

    if-eqz v0, :cond_1

    goto :goto_0

    .line 38
    :cond_1
    new-instance v0, Lcom/onevcat/uniwebview/internal/obfuscated/k3;

    invoke-direct {v0, p0}, Lcom/onevcat/uniwebview/internal/obfuscated/k3;-><init>(Lcom/onevcat/uniwebview/d;)V

    .line 39
    iput-object v0, p0, Lcom/onevcat/uniwebview/d;->s:Lcom/onevcat/uniwebview/internal/obfuscated/k3;

    .line 40
    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    const-string v2, "UniWebViewTransparencyBridge"

    invoke-virtual {v1, v0, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    :goto_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    new-instance v1, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda4;-><init>(Lcom/onevcat/uniwebview/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/onevcat/uniwebview/d;->l:Z

    return-void
.end method

.method public final e()V
    .locals 3

    .line 1
    sget-object v0, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requesting transparency mask refresh for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "message"

    .line 3
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    sget-object v2, Lcom/onevcat/uniwebview/internal/obfuscated/o;->c:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v0, v2, v1}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->u:Lcom/onevcat/uniwebview/a;

    new-instance v1, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/onevcat/uniwebview/d$$ExternalSyntheticLambda6;-><init>(Lcom/onevcat/uniwebview/d;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->q:Landroid/graphics/Point;

    .line 2
    sget-object v1, Lcom/onevcat/uniwebview/internal/obfuscated/p;->b:Lcom/onevcat/uniwebview/internal/obfuscated/p;

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Container.syncShadow called for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/onevcat/uniwebview/d;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", lastSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "message"

    .line 4
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget-object v3, Lcom/onevcat/uniwebview/internal/obfuscated/o;->d:Lcom/onevcat/uniwebview/internal/obfuscated/o;

    invoke-virtual {v1, v3, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/p;->a(Lcom/onevcat/uniwebview/internal/obfuscated/o;Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 31
    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->w:Lcom/onevcat/uniwebview/internal/obfuscated/j3;

    iget-object v2, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2, v3, v0}, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->a(Landroid/view/View;II)V

    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/onevcat/uniwebview/d;->w:Lcom/onevcat/uniwebview/internal/obfuscated/j3;

    iget-object v1, p0, Lcom/onevcat/uniwebview/d;->x:Lcom/onevcat/uniwebview/internal/obfuscated/c3;

    sget v2, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->m:I

    const/4 v2, 0x0

    .line 34
    invoke-virtual {v0, v1, v2, v2}, Lcom/onevcat/uniwebview/internal/obfuscated/j3;->a(Landroid/view/View;II)V

    :goto_0
    return-void
.end method
