.class public final Lcom/chartboost/heliumsdk/domain/AppConfig;
.super Ljava/lang/Object;
.source "AppConfig.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;,
        Lcom/chartboost/heliumsdk/domain/AppConfig$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAppConfig.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AppConfig.kt\ncom/chartboost/heliumsdk/domain/AppConfig\n+ 2 JsonElementBuilders.kt\nkotlinx/serialization/json/JsonElementBuildersKt\n*L\n1#1,111:1\n28#2,4:112\n*S KotlinDebug\n*F\n+ 1 AppConfig.kt\ncom/chartboost/heliumsdk/domain/AppConfig\n*L\n63#1:112,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\"\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008W\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u0084\u00012\u00020\u0001:\u0004\u0083\u0001\u0084\u0001B\u009d\u0002\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0010\u0008\u0001\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0007\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\u000b\u0012\u0010\u0008\u0001\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u000e\u0018\u00010\r\u0012\u0008\u0008\u0001\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0012\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0013\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u000b\u0012\u0008\u0008\u0001\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0018\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\u0019\u001a\u00020\u000b\u0012\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u001b\u001a\u0004\u0018\u00010\u001c\u0012\u0010\u0008\u0001\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e\u0012\n\u0008\u0001\u0010 \u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010!\u001a\u00020\u0003\u0012\u0008\u0008\u0001\u0010\"\u001a\u00020\u000b\u0012\u0008\u0008\u0001\u0010#\u001a\u00020\u0003\u0012\u0008\u0010$\u001a\u0004\u0018\u00010%\u00a2\u0006\u0002\u0010&B\u0081\u0002\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u0016\u0012\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c\u0012\u0010\u0008\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e\u0012\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010!\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\"\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010#\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\'J\t\u0010]\u001a\u00020\u0005H\u00c6\u0003J\t\u0010^\u001a\u00020\u0003H\u00c6\u0003J\t\u0010_\u001a\u00020\u0003H\u00c6\u0003J\t\u0010`\u001a\u00020\u000bH\u00c6\u0003J\t\u0010a\u001a\u00020\u0016H\u00c6\u0003J\t\u0010b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010c\u001a\u00020\u0003H\u00c6\u0003J\t\u0010d\u001a\u00020\u000bH\u00c6\u0003J\t\u0010e\u001a\u00020\u0003H\u00c6\u0003J\t\u0010f\u001a\u00020\u001cH\u00c6\u0003J\u0011\u0010g\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001eH\u00c6\u0003J\u000f\u0010h\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0007H\u00c6\u0003J\u000b\u0010i\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\t\u0010j\u001a\u00020\u0003H\u00c6\u0003J\t\u0010k\u001a\u00020\u000bH\u00c6\u0003J\t\u0010l\u001a\u00020\u0003H\u00c6\u0003J\t\u0010m\u001a\u00020\u0003H\u00c6\u0003J\t\u0010n\u001a\u00020\u0003H\u00c6\u0003J\t\u0010o\u001a\u00020\u000bH\u00c6\u0003J\u000f\u0010p\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u00c6\u0003J\t\u0010q\u001a\u00020\u0003H\u00c6\u0003J\t\u0010r\u001a\u00020\u0003H\u00c6\u0003J\t\u0010s\u001a\u00020\u0003H\u00c6\u0003J\u0085\u0002\u0010t\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u000e\u0008\u0002\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u000e\u0008\u0002\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0015\u001a\u00020\u00162\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u001a\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u001b\u001a\u00020\u001c2\u0010\u0008\u0002\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e2\n\u0008\u0002\u0010 \u001a\u0004\u0018\u00010\u00052\u0008\u0008\u0002\u0010!\u001a\u00020\u00032\u0008\u0008\u0002\u0010\"\u001a\u00020\u000b2\u0008\u0008\u0002\u0010#\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010u\u001a\u00020\u00162\u0008\u0010v\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\u0006\u0010w\u001a\u00020\u0016J\u0006\u0010x\u001a\u00020\u0016J\t\u0010y\u001a\u00020\u0003H\u00d6\u0001J\u0006\u0010z\u001a\u00020\u0005J\t\u0010{\u001a\u00020\u0005H\u00d6\u0001J$\u0010|\u001a\u00020}2\u0006\u0010~\u001a\u00020\u00002\u0007\u0010\u007f\u001a\u00030\u0080\u00012\u0008\u0010\u0081\u0001\u001a\u00030\u0082\u0001H\u00c7\u0001R\u001c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00078\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008(\u0010)R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008*\u0010)\u001a\u0004\u0008+\u0010,R\u001c\u0010\u0017\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008-\u0010)\u001a\u0004\u0008.\u0010/R\u001c\u0010\u0018\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00080\u0010)\u001a\u0004\u00081\u0010/R\u001c\u0010\t\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00082\u0010)\u001a\u0004\u00083\u0010/R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00084\u0010)\u001a\u0004\u00085\u00106R\u001c\u0010\u001b\u001a\u00020\u001c8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u00087\u0010)\u001a\u0004\u00088\u00109R\u001c\u0010#\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008:\u0010)\u001a\u0004\u0008;\u0010/R\u001c\u0010\u000f\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008<\u0010)\u001a\u0004\u0008=\u0010/R\u001c\u0010\u0013\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008>\u0010)\u001a\u0004\u0008?\u0010/R\u001c\u0010\u0008\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008@\u0010)\u001a\u0004\u0008A\u0010/R\u001e\u0010 \u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008B\u0010)\u001a\u0004\u0008C\u0010,R\u001c\u0010!\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008D\u0010)\u001a\u0004\u0008E\u0010/R\"\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\r8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008F\u0010)\u001a\u0004\u0008G\u0010HR\u001c\u0010\u0012\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008I\u0010)\u001a\u0004\u0008J\u0010/R$\u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\u001f\u0018\u00010\u001e8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008K\u0010)\u001a\u0004\u0008L\u0010MR\u001c\u0010\u0014\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008N\u0010)\u001a\u0004\u0008O\u00106R\u001c\u0010\"\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008P\u0010)\u001a\u0004\u0008Q\u00106R\u001c\u0010\u0015\u001a\u00020\u00168\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008R\u0010)\u001a\u0004\u0008S\u0010TR\u001c\u0010\u0010\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008U\u0010)\u001a\u0004\u0008V\u0010/R\u001c\u0010\u0011\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008W\u0010)\u001a\u0004\u0008X\u0010/R\u001c\u0010\u0019\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008Y\u0010)\u001a\u0004\u0008Z\u00106R\u001c\u0010\u001a\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008[\u0010)\u001a\u0004\u0008\\\u0010/\u00a8\u0006\u0085\u0001"
    }
    d2 = {
        "Lcom/chartboost/heliumsdk/domain/AppConfig;",
        "",
        "seen1",
        "",
        "appId",
        "",
        "adapterClasses",
        "",
        "logLevel",
        "bannerLoadTimeoutSeconds",
        "bannerSizeEventDelayMs",
        "",
        "metricsEvents",
        "Ljava/util/EnumSet;",
        "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
        "fullscreenLoadTimeoutSeconds",
        "showTimeoutSeconds",
        "startSdkTimeoutSeconds",
        "partnerInitTimeoutSeconds",
        "initializationMetricsPostTimeout",
        "prebidFetchTimeoutSeconds",
        "shouldNotifyLoads",
        "",
        "bannerImpressionMinVisibleDips",
        "bannerImpressionMinVisibleDurationMs",
        "visibilityTrackerPollIntervalMs",
        "visibilityTrackerTraversalLimit",
        "credentials",
        "Lkotlinx/serialization/json/JsonObject;",
        "placements",
        "",
        "Lcom/chartboost/heliumsdk/domain/Placement;",
        "logLevelString",
        "maxQueueSize",
        "queueAdTtlSeconds",
        "defaultQueueSize",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/internal/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJILkotlinx/serialization/internal/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJI)V",
        "getAdapterClasses$annotations",
        "()V",
        "getAppId$annotations",
        "getAppId",
        "()Ljava/lang/String;",
        "getBannerImpressionMinVisibleDips$annotations",
        "getBannerImpressionMinVisibleDips",
        "()I",
        "getBannerImpressionMinVisibleDurationMs$annotations",
        "getBannerImpressionMinVisibleDurationMs",
        "getBannerLoadTimeoutSeconds$annotations",
        "getBannerLoadTimeoutSeconds",
        "getBannerSizeEventDelayMs$annotations",
        "getBannerSizeEventDelayMs",
        "()J",
        "getCredentials$annotations",
        "getCredentials",
        "()Lkotlinx/serialization/json/JsonObject;",
        "getDefaultQueueSize$annotations",
        "getDefaultQueueSize",
        "getFullscreenLoadTimeoutSeconds$annotations",
        "getFullscreenLoadTimeoutSeconds",
        "getInitializationMetricsPostTimeout$annotations",
        "getInitializationMetricsPostTimeout",
        "getLogLevel$annotations",
        "getLogLevel",
        "getLogLevelString$annotations",
        "getLogLevelString",
        "getMaxQueueSize$annotations",
        "getMaxQueueSize",
        "getMetricsEvents$annotations",
        "getMetricsEvents",
        "()Ljava/util/EnumSet;",
        "getPartnerInitTimeoutSeconds$annotations",
        "getPartnerInitTimeoutSeconds",
        "getPlacements$annotations",
        "getPlacements",
        "()Ljava/util/List;",
        "getPrebidFetchTimeoutSeconds$annotations",
        "getPrebidFetchTimeoutSeconds",
        "getQueueAdTtlSeconds$annotations",
        "getQueueAdTtlSeconds",
        "getShouldNotifyLoads$annotations",
        "getShouldNotifyLoads",
        "()Z",
        "getShowTimeoutSeconds$annotations",
        "getShowTimeoutSeconds",
        "getStartSdkTimeoutSeconds$annotations",
        "getStartSdkTimeoutSeconds",
        "getVisibilityTrackerPollIntervalMs$annotations",
        "getVisibilityTrackerPollIntervalMs",
        "getVisibilityTrackerTraversalLimit$annotations",
        "getVisibilityTrackerTraversalLimit",
        "component1",
        "component10",
        "component11",
        "component12",
        "component13",
        "component14",
        "component15",
        "component16",
        "component17",
        "component18",
        "component19",
        "component2",
        "component20",
        "component21",
        "component22",
        "component23",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "copy",
        "equals",
        "other",
        "hasMinimumAdapters",
        "hasMinimumCredentials",
        "hashCode",
        "toJsonString",
        "toString",
        "write$Self",
        "",
        "self",
        "output",
        "Lkotlinx/serialization/encoding/CompositeEncoder;",
        "serialDesc",
        "Lkotlinx/serialization/descriptors/SerialDescriptor;",
        "$serializer",
        "Companion",
        "Helium_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlinx/serialization/Serializable;
.end annotation


# static fields
.field public static final Companion:Lcom/chartboost/heliumsdk/domain/AppConfig$Companion;


# instance fields
.field public final adapterClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final appId:Ljava/lang/String;

.field private final bannerImpressionMinVisibleDips:I

.field private final bannerImpressionMinVisibleDurationMs:I

.field private final bannerLoadTimeoutSeconds:I

.field private final bannerSizeEventDelayMs:J

.field private final credentials:Lkotlinx/serialization/json/JsonObject;

.field private final defaultQueueSize:I

.field private final fullscreenLoadTimeoutSeconds:I

.field private final initializationMetricsPostTimeout:I

.field private final logLevel:I

.field private final logLevelString:Ljava/lang/String;

.field private final maxQueueSize:I

.field private final metricsEvents:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
            ">;"
        }
    .end annotation
.end field

.field private final partnerInitTimeoutSeconds:I

.field private final placements:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/chartboost/heliumsdk/domain/Placement;",
            ">;"
        }
    .end annotation
.end field

.field private final prebidFetchTimeoutSeconds:J

.field private final queueAdTtlSeconds:J

.field private final shouldNotifyLoads:Z

.field private final showTimeoutSeconds:I

.field private final startSdkTimeoutSeconds:I

.field private final visibilityTrackerPollIntervalMs:J

.field private final visibilityTrackerTraversalLimit:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/chartboost/heliumsdk/domain/AppConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/chartboost/heliumsdk/domain/AppConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->Companion:Lcom/chartboost/heliumsdk/domain/AppConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 30

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const v28, 0x7fffff

    const/16 v29, 0x0

    invoke-direct/range {v0 .. v29}, Lcom/chartboost/heliumsdk/domain/AppConfig;-><init>(Ljava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJILkotlinx/serialization/internal/SerializationConstructorMarker;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "app_id"
        .end annotation
    .end param
    .param p3    # Ljava/util/Set;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "adapter_classes"
        .end annotation

        .annotation runtime Lkotlinx/serialization/Serializable;
        .end annotation
    .end param
    .param p4    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "logging_level"
        .end annotation
    .end param
    .param p5    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "banner_load_timeout"
        .end annotation
    .end param
    .param p6    # J
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "banner_size_event_delay_ms"
        .end annotation
    .end param
    .param p8    # Ljava/util/EnumSet;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "metrics_events"
        .end annotation

        .annotation runtime Lkotlinx/serialization/Serializable;
            with = Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;
        .end annotation
    .end param
    .param p9    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "fullscreen_load_timeout"
        .end annotation
    .end param
    .param p10    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "show_timeout"
        .end annotation
    .end param
    .param p11    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "start_timeout"
        .end annotation
    .end param
    .param p12    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "init_timeout"
        .end annotation
    .end param
    .param p13    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "init_metrics_post_timeout"
        .end annotation
    .end param
    .param p14    # J
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "prebid_fetch_timeout"
        .end annotation
    .end param
    .param p16    # Z
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "should_notify_loads"
        .end annotation
    .end param
    .param p17    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "banner_impression_min_visible_dips"
        .end annotation
    .end param
    .param p18    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "banner_impression_min_visible_duration_ms"
        .end annotation
    .end param
    .param p19    # J
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "visibility_tracker_poll_interval_ms"
        .end annotation
    .end param
    .param p21    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "visibility_tracker_traversal_limit"
        .end annotation
    .end param
    .param p22    # Lkotlinx/serialization/json/JsonObject;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "credentials"
        .end annotation
    .end param
    .param p23    # Ljava/util/List;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "placements"
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "log_level"
        .end annotation
    .end param
    .param p25    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "max_queue_size"
        .end annotation
    .end param
    .param p26    # J
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "queued_ad_ttl"
        .end annotation
    .end param
    .param p28    # I
        .annotation runtime Lkotlinx/serialization/SerialName;
            value = "default_queue_size"
        .end annotation
    .end param
    .annotation runtime Lkotlin/Deprecated;
        level = .enum Lkotlin/DeprecationLevel;->HIDDEN:Lkotlin/DeprecationLevel;
        message = "This synthesized declaration should not be used directly"
        replaceWith = .subannotation Lkotlin/ReplaceWith;
            expression = ""
            imports = {}
        .end subannotation
    .end annotation

    move-object v0, p0

    move v1, p1

    and-int/lit8 v2, v1, 0x0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 23
    sget-object v2, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/domain/AppConfig$$serializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    move-result-object v2

    invoke-static {p1, v3, v2}, Lkotlinx/serialization/internal/PluginExceptionsKt;->throwMissingFieldException(IILkotlinx/serialization/descriptors/SerialDescriptor;)V

    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 v2, v1, 0x1

    if-nez v2, :cond_1

    .line 26
    sget-object v2, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v2}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getAppId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string v2, ""

    goto :goto_0

    :cond_1
    move-object v2, p2

    .line 23
    :cond_2
    :goto_0
    iput-object v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_3

    .line 30
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, p3

    .line 23
    :goto_1
    iput-object v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_4

    iput v3, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    goto :goto_2

    :cond_4
    move v2, p4

    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_5

    const/16 v2, 0xf

    goto :goto_3

    :cond_5
    move v2, p5

    :goto_3
    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    and-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_6

    const-wide/16 v4, 0x3e8

    goto :goto_4

    :cond_6
    move-wide v4, p6

    :goto_4
    iput-wide v4, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_7

    const-class v2, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 39
    invoke-static {v2}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    const-string v4, "allOf(Endpoints.Sdk.Event::class.java)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    move-object/from16 v2, p8

    .line 23
    :goto_5
    iput-object v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_8

    const/16 v2, 0x1e

    goto :goto_6

    :cond_8
    move/from16 v2, p9

    :goto_6
    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    and-int/lit16 v2, v1, 0x80

    const/4 v4, 0x5

    if-nez v2, :cond_9

    iput v4, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    goto :goto_7

    :cond_9
    move/from16 v2, p10

    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-nez v2, :cond_a

    const/16 v2, 0x14

    goto :goto_8

    :cond_a
    move/from16 v2, p11

    :goto_8
    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    and-int/lit16 v2, v1, 0x200

    const/4 v5, 0x1

    if-nez v2, :cond_b

    iput v5, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    goto :goto_9

    :cond_b
    move/from16 v2, p12

    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    :goto_9
    and-int/lit16 v2, v1, 0x400

    if-nez v2, :cond_c

    const/16 v2, 0xa

    goto :goto_a

    :cond_c
    move/from16 v2, p13

    :goto_a
    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    and-int/lit16 v2, v1, 0x800

    if-nez v2, :cond_d

    const-wide/16 v6, 0x5

    goto :goto_b

    :cond_d
    move-wide/from16 v6, p14

    :goto_b
    iput-wide v6, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    and-int/lit16 v2, v1, 0x1000

    if-nez v2, :cond_e

    iput-boolean v5, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    goto :goto_c

    :cond_e
    move/from16 v2, p16

    iput-boolean v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    :goto_c
    and-int/lit16 v2, v1, 0x2000

    if-nez v2, :cond_f

    iput v5, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    goto :goto_d

    :cond_f
    move/from16 v2, p17

    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    :goto_d
    and-int/lit16 v2, v1, 0x4000

    if-nez v2, :cond_10

    iput v3, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    goto :goto_e

    :cond_10
    move/from16 v2, p18

    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    :goto_e
    const v2, 0x8000

    and-int/2addr v2, v1

    if-nez v2, :cond_11

    const-wide/16 v2, 0x64

    goto :goto_f

    :cond_11
    move-wide/from16 v2, p19

    :goto_f
    iput-wide v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    const/high16 v2, 0x10000

    and-int/2addr v2, v1

    if-nez v2, :cond_12

    const/16 v2, 0x19

    goto :goto_10

    :cond_12
    move/from16 v2, p21

    :goto_10
    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    const/high16 v2, 0x20000

    and-int/2addr v2, v1

    if-nez v2, :cond_13

    .line 113
    new-instance v2, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v2}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 115
    invoke-virtual {v2}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v2

    goto :goto_11

    :cond_13
    move-object/from16 v2, p22

    .line 23
    :goto_11
    iput-object v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    const/high16 v2, 0x40000

    and-int/2addr v2, v1

    const/4 v3, 0x0

    if-nez v2, :cond_14

    iput-object v3, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    goto :goto_12

    :cond_14
    move-object/from16 v2, p23

    iput-object v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    :goto_12
    const/high16 v2, 0x80000

    and-int/2addr v2, v1

    if-nez v2, :cond_15

    iput-object v3, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    goto :goto_13

    :cond_15
    move-object/from16 v2, p24

    iput-object v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    :goto_13
    const/high16 v2, 0x100000

    and-int/2addr v2, v1

    if-nez v2, :cond_16

    iput v4, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    goto :goto_14

    :cond_16
    move/from16 v2, p25

    iput v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    :goto_14
    const/high16 v2, 0x200000

    and-int/2addr v2, v1

    if-nez v2, :cond_17

    const-wide/16 v2, 0xe10

    goto :goto_15

    :cond_17
    move-wide/from16 v2, p26

    :goto_15
    iput-wide v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    const/high16 v2, 0x400000

    and-int/2addr v1, v2

    if-nez v1, :cond_18

    const/4 v1, 0x2

    goto :goto_16

    :cond_18
    move/from16 v1, p28

    :goto_16
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Ljava/util/EnumSet<",
            "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
            ">;IIIIIJZIIJI",
            "Lkotlinx/serialization/json/JsonObject;",
            "Ljava/util/List<",
            "Lcom/chartboost/heliumsdk/domain/Placement;",
            ">;",
            "Ljava/lang/String;",
            "IJI)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p7

    move-object/from16 v4, p21

    const-string v5, "appId"

    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "adapterClasses"

    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "metricsEvents"

    invoke-static {p7, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "credentials"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    .line 27
    iput-object v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    move v1, p3

    .line 31
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    move v1, p4

    .line 33
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    move-wide v1, p5

    .line 35
    iput-wide v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    .line 37
    iput-object v3, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    move v1, p8

    .line 40
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    move v1, p9

    .line 42
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    move/from16 v1, p10

    .line 44
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    move/from16 v1, p11

    .line 46
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    move/from16 v1, p12

    .line 48
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    move-wide/from16 v1, p13

    .line 50
    iput-wide v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    move/from16 v1, p15

    .line 52
    iput-boolean v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    move/from16 v1, p16

    .line 54
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    move/from16 v1, p17

    .line 56
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    move-wide/from16 v1, p18

    .line 58
    iput-wide v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    move/from16 v1, p20

    .line 60
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    .line 62
    iput-object v4, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    move-object/from16 v1, p22

    .line 64
    iput-object v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    move-object/from16 v1, p23

    .line 66
    iput-object v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    move/from16 v1, p24

    .line 68
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    move-wide/from16 v1, p25

    .line 70
    iput-wide v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    move/from16 v1, p27

    .line 72
    iput v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 28

    move/from16 v0, p28

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getAppId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_0
    move-object/from16 v1, p1

    :cond_1
    :goto_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_2

    .line 30
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v2

    goto :goto_1

    :cond_2
    move-object/from16 v2, p2

    :goto_1
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    move/from16 v3, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_4

    const/16 v5, 0xf

    goto :goto_3

    :cond_4
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_5

    const-wide/16 v6, 0x3e8

    goto :goto_4

    :cond_5
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v0, 0x20

    if-eqz v8, :cond_6

    .line 39
    const-class v8, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    invoke-static {v8}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v8

    const-string v9, "allOf(Endpoints.Sdk.Event::class.java)"

    invoke-static {v8, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v0, 0x40

    if-eqz v9, :cond_7

    const/16 v9, 0x1e

    goto :goto_6

    :cond_7
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_8

    const/4 v10, 0x5

    goto :goto_7

    :cond_8
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v12, v0, 0x100

    if-eqz v12, :cond_9

    const/16 v12, 0x14

    goto :goto_8

    :cond_9
    move/from16 v12, p10

    :goto_8
    and-int/lit16 v13, v0, 0x200

    const/4 v14, 0x1

    if-eqz v13, :cond_a

    move v13, v14

    goto :goto_9

    :cond_a
    move/from16 v13, p11

    :goto_9
    and-int/lit16 v15, v0, 0x400

    if-eqz v15, :cond_b

    const/16 v15, 0xa

    goto :goto_a

    :cond_b
    move/from16 v15, p12

    :goto_a
    and-int/lit16 v4, v0, 0x800

    if-eqz v4, :cond_c

    const-wide/16 v16, 0x5

    goto :goto_b

    :cond_c
    move-wide/from16 v16, p13

    :goto_b
    and-int/lit16 v4, v0, 0x1000

    if-eqz v4, :cond_d

    move v4, v14

    goto :goto_c

    :cond_d
    move/from16 v4, p15

    :goto_c
    and-int/lit16 v11, v0, 0x2000

    if-eqz v11, :cond_e

    goto :goto_d

    :cond_e
    move/from16 v14, p16

    :goto_d
    and-int/lit16 v11, v0, 0x4000

    if-eqz v11, :cond_f

    const/4 v11, 0x0

    goto :goto_e

    :cond_f
    move/from16 v11, p17

    :goto_e
    const v18, 0x8000

    and-int v18, v0, v18

    if-eqz v18, :cond_10

    const-wide/16 v18, 0x64

    goto :goto_f

    :cond_10
    move-wide/from16 v18, p18

    :goto_f
    const/high16 v20, 0x10000

    and-int v20, v0, v20

    if-eqz v20, :cond_11

    const/16 v20, 0x19

    goto :goto_10

    :cond_11
    move/from16 v20, p20

    :goto_10
    const/high16 v21, 0x20000

    and-int v21, v0, v21

    if-eqz v21, :cond_12

    .line 113
    new-instance v21, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct/range {v21 .. v21}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 115
    invoke-virtual/range {v21 .. v21}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v21

    goto :goto_11

    :cond_12
    move-object/from16 v21, p21

    :goto_11
    const/high16 v22, 0x40000

    and-int v22, v0, v22

    const/16 v23, 0x0

    if-eqz v22, :cond_13

    move-object/from16 v22, v23

    goto :goto_12

    :cond_13
    move-object/from16 v22, p22

    :goto_12
    const/high16 v24, 0x80000

    and-int v24, v0, v24

    if-eqz v24, :cond_14

    goto :goto_13

    :cond_14
    move-object/from16 v23, p23

    :goto_13
    const/high16 v24, 0x100000

    and-int v24, v0, v24

    if-eqz v24, :cond_15

    const/16 v24, 0x5

    goto :goto_14

    :cond_15
    move/from16 v24, p24

    :goto_14
    const/high16 v25, 0x200000

    and-int v25, v0, v25

    if-eqz v25, :cond_16

    const-wide/16 v25, 0xe10

    goto :goto_15

    :cond_16
    move-wide/from16 v25, p25

    :goto_15
    const/high16 v27, 0x400000

    and-int v0, v0, v27

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    goto :goto_16

    :cond_17
    move/from16 v0, p27

    :goto_16
    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    move/from16 p4, v3

    move/from16 p5, v5

    move-wide/from16 p6, v6

    move-object/from16 p8, v8

    move/from16 p9, v9

    move/from16 p10, v10

    move/from16 p11, v12

    move/from16 p12, v13

    move/from16 p13, v15

    move-wide/from16 p14, v16

    move/from16 p16, v4

    move/from16 p17, v14

    move/from16 p18, v11

    move-wide/from16 p19, v18

    move/from16 p21, v20

    move-object/from16 p22, v21

    move-object/from16 p23, v22

    move-object/from16 p24, v23

    move/from16 p25, v24

    move-wide/from16 p26, v25

    move/from16 p28, v0

    .line 24
    invoke-direct/range {p1 .. p28}, Lcom/chartboost/heliumsdk/domain/AppConfig;-><init>(Ljava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJI)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/chartboost/heliumsdk/domain/AppConfig;Ljava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJIILjava/lang/Object;)Lcom/chartboost/heliumsdk/domain/AppConfig;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p28

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    goto :goto_1

    :cond_1
    move-object/from16 v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget v4, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    goto :goto_2

    :cond_2
    move/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget v5, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-wide v6, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    goto :goto_4

    :cond_4
    move-wide/from16 v6, p5

    :goto_4
    and-int/lit8 v8, v1, 0x20

    if-eqz v8, :cond_5

    iget-object v8, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    goto :goto_5

    :cond_5
    move-object/from16 v8, p7

    :goto_5
    and-int/lit8 v9, v1, 0x40

    if-eqz v9, :cond_6

    iget v9, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    goto :goto_6

    :cond_6
    move/from16 v9, p8

    :goto_6
    and-int/lit16 v10, v1, 0x80

    if-eqz v10, :cond_7

    iget v10, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    goto :goto_7

    :cond_7
    move/from16 v10, p9

    :goto_7
    and-int/lit16 v11, v1, 0x100

    if-eqz v11, :cond_8

    iget v11, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    goto :goto_8

    :cond_8
    move/from16 v11, p10

    :goto_8
    and-int/lit16 v12, v1, 0x200

    if-eqz v12, :cond_9

    iget v12, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    goto :goto_9

    :cond_9
    move/from16 v12, p11

    :goto_9
    and-int/lit16 v13, v1, 0x400

    if-eqz v13, :cond_a

    iget v13, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    goto :goto_a

    :cond_a
    move/from16 v13, p12

    :goto_a
    and-int/lit16 v14, v1, 0x800

    if-eqz v14, :cond_b

    iget-wide v14, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    goto :goto_b

    :cond_b
    move-wide/from16 v14, p13

    :goto_b
    move-wide/from16 p13, v14

    and-int/lit16 v14, v1, 0x1000

    if-eqz v14, :cond_c

    iget-boolean v14, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    goto :goto_c

    :cond_c
    move/from16 v14, p15

    :goto_c
    and-int/lit16 v15, v1, 0x2000

    if-eqz v15, :cond_d

    iget v15, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    goto :goto_d

    :cond_d
    move/from16 v15, p16

    :goto_d
    move/from16 p16, v15

    and-int/lit16 v15, v1, 0x4000

    if-eqz v15, :cond_e

    iget v15, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    goto :goto_e

    :cond_e
    move/from16 v15, p17

    :goto_e
    const v16, 0x8000

    and-int v16, v1, v16

    move/from16 p15, v14

    move/from16 p17, v15

    if-eqz v16, :cond_f

    iget-wide v14, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    goto :goto_f

    :cond_f
    move-wide/from16 v14, p18

    :goto_f
    const/high16 v16, 0x10000

    and-int v16, v1, v16

    move-wide/from16 p18, v14

    if-eqz v16, :cond_10

    iget v14, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    goto :goto_10

    :cond_10
    move/from16 v14, p20

    :goto_10
    const/high16 v15, 0x20000

    and-int/2addr v15, v1

    if-eqz v15, :cond_11

    iget-object v15, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    goto :goto_11

    :cond_11
    move-object/from16 v15, p21

    :goto_11
    const/high16 v16, 0x40000

    and-int v16, v1, v16

    move-object/from16 p21, v15

    if-eqz v16, :cond_12

    iget-object v15, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    goto :goto_12

    :cond_12
    move-object/from16 v15, p22

    :goto_12
    const/high16 v16, 0x80000

    and-int v16, v1, v16

    move-object/from16 p22, v15

    if-eqz v16, :cond_13

    iget-object v15, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    goto :goto_13

    :cond_13
    move-object/from16 v15, p23

    :goto_13
    const/high16 v16, 0x100000

    and-int v16, v1, v16

    move-object/from16 p23, v15

    if-eqz v16, :cond_14

    iget v15, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    goto :goto_14

    :cond_14
    move/from16 v15, p24

    :goto_14
    const/high16 v16, 0x200000

    and-int v16, v1, v16

    move/from16 p20, v14

    move/from16 p24, v15

    if-eqz v16, :cond_15

    iget-wide v14, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    goto :goto_15

    :cond_15
    move-wide/from16 v14, p25

    :goto_15
    const/high16 v16, 0x400000

    and-int v1, v1, v16

    if-eqz v1, :cond_16

    iget v1, v0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    goto :goto_16

    :cond_16
    move/from16 v1, p27

    :goto_16
    move-object/from16 p1, v2

    move-object/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move-wide/from16 p5, v6

    move-object/from16 p7, v8

    move/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move/from16 p11, v12

    move/from16 p12, v13

    move-wide/from16 p25, v14

    move/from16 p27, v1

    invoke-virtual/range {p0 .. p27}, Lcom/chartboost/heliumsdk/domain/AppConfig;->copy(Ljava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJI)Lcom/chartboost/heliumsdk/domain/AppConfig;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getAdapterClasses$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "adapter_classes"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
    .end annotation

    return-void
.end method

.method public static synthetic getAppId$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "app_id"
    .end annotation

    return-void
.end method

.method public static synthetic getBannerImpressionMinVisibleDips$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "banner_impression_min_visible_dips"
    .end annotation

    return-void
.end method

.method public static synthetic getBannerImpressionMinVisibleDurationMs$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "banner_impression_min_visible_duration_ms"
    .end annotation

    return-void
.end method

.method public static synthetic getBannerLoadTimeoutSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "banner_load_timeout"
    .end annotation

    return-void
.end method

.method public static synthetic getBannerSizeEventDelayMs$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "banner_size_event_delay_ms"
    .end annotation

    return-void
.end method

.method public static synthetic getCredentials$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "credentials"
    .end annotation

    return-void
.end method

.method public static synthetic getDefaultQueueSize$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "default_queue_size"
    .end annotation

    return-void
.end method

.method public static synthetic getFullscreenLoadTimeoutSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "fullscreen_load_timeout"
    .end annotation

    return-void
.end method

.method public static synthetic getInitializationMetricsPostTimeout$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "init_metrics_post_timeout"
    .end annotation

    return-void
.end method

.method public static synthetic getLogLevel$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "logging_level"
    .end annotation

    return-void
.end method

.method public static synthetic getLogLevelString$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "log_level"
    .end annotation

    return-void
.end method

.method public static synthetic getMaxQueueSize$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "max_queue_size"
    .end annotation

    return-void
.end method

.method public static synthetic getMetricsEvents$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "metrics_events"
    .end annotation

    .annotation runtime Lkotlinx/serialization/Serializable;
        with = Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;
    .end annotation

    return-void
.end method

.method public static synthetic getPartnerInitTimeoutSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "init_timeout"
    .end annotation

    return-void
.end method

.method public static synthetic getPlacements$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "placements"
    .end annotation

    return-void
.end method

.method public static synthetic getPrebidFetchTimeoutSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "prebid_fetch_timeout"
    .end annotation

    return-void
.end method

.method public static synthetic getQueueAdTtlSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "queued_ad_ttl"
    .end annotation

    return-void
.end method

.method public static synthetic getShouldNotifyLoads$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "should_notify_loads"
    .end annotation

    return-void
.end method

.method public static synthetic getShowTimeoutSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "show_timeout"
    .end annotation

    return-void
.end method

.method public static synthetic getStartSdkTimeoutSeconds$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "start_timeout"
    .end annotation

    return-void
.end method

.method public static synthetic getVisibilityTrackerPollIntervalMs$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "visibility_tracker_poll_interval_ms"
    .end annotation

    return-void
.end method

.method public static synthetic getVisibilityTrackerTraversalLimit$annotations()V
    .locals 0
    .annotation runtime Lkotlinx/serialization/SerialName;
        value = "visibility_tracker_traversal_limit"
    .end annotation

    return-void
.end method

.method public static final write$Self(Lcom/chartboost/heliumsdk/domain/AppConfig;Lkotlinx/serialization/encoding/CompositeEncoder;Lkotlinx/serialization/descriptors/SerialDescriptor;)V
    .locals 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 23
    invoke-interface {p1, p2, v0}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    .line 26
    sget-object v3, Lcom/chartboost/heliumsdk/HeliumSdk;->Companion:Lcom/chartboost/heliumsdk/HeliumSdk$Companion;

    invoke-virtual {v3}, Lcom/chartboost/heliumsdk/HeliumSdk$Companion;->getAppId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, ""

    :cond_1
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_1
    if-eqz v1, :cond_3

    .line 23
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    invoke-interface {p1, p2, v0, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILjava/lang/String;)V

    :cond_3
    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_2
    move v1, v2

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    .line 30
    invoke-static {}, Lkotlin/collections/SetsKt;->emptySet()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_3
    if-eqz v1, :cond_6

    .line 23
    new-instance v1, Lkotlinx/serialization/internal/LinkedHashSetSerializer;

    sget-object v3, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    invoke-direct {v1, v3}, Lkotlinx/serialization/internal/LinkedHashSetSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    iget-object v3, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    invoke-interface {p1, p2, v2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_6
    const/4 v1, 0x2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_7

    :goto_4
    move v3, v2

    goto :goto_5

    :cond_7
    iget v3, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    if-eqz v3, :cond_8

    goto :goto_4

    :cond_8
    move v3, v0

    :goto_5
    if-eqz v3, :cond_9

    iget v3, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    invoke-interface {p1, p2, v1, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_9
    const/4 v3, 0x3

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    const/16 v5, 0xf

    if-eqz v4, :cond_a

    :goto_6
    move v4, v2

    goto :goto_7

    :cond_a
    iget v4, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    if-eq v4, v5, :cond_b

    goto :goto_6

    :cond_b
    move v4, v0

    :goto_7
    if-eqz v4, :cond_c

    iget v4, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    invoke-interface {p1, p2, v3, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_c
    const/4 v3, 0x4

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_d

    :goto_8
    move v4, v2

    goto :goto_9

    :cond_d
    iget-wide v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    const-wide/16 v8, 0x3e8

    cmp-long v4, v6, v8

    if-eqz v4, :cond_e

    goto :goto_8

    :cond_e
    move v4, v0

    :goto_9
    if-eqz v4, :cond_f

    iget-wide v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    invoke-interface {p1, p2, v3, v6, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_f
    const/4 v3, 0x5

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_10

    :goto_a
    move v4, v2

    goto :goto_b

    :cond_10
    iget-object v4, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    const-class v6, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;

    .line 39
    invoke-static {v6}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    const-string v7, "allOf(Endpoints.Sdk.Event::class.java)"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    goto :goto_a

    :cond_11
    move v4, v0

    :goto_b
    if-eqz v4, :cond_12

    .line 23
    sget-object v4, Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;->INSTANCE:Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event$EventEnumSetSerializer;

    check-cast v4, Lkotlinx/serialization/SerializationStrategy;

    iget-object v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    invoke-interface {p1, p2, v3, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_12
    const/4 v4, 0x6

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_13

    :goto_c
    move v6, v2

    goto :goto_d

    :cond_13
    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    const/16 v7, 0x1e

    if-eq v6, v7, :cond_14

    goto :goto_c

    :cond_14
    move v6, v0

    :goto_d
    if-eqz v6, :cond_15

    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    invoke-interface {p1, p2, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_15
    const/4 v4, 0x7

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_16

    :goto_e
    move v6, v2

    goto :goto_f

    :cond_16
    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    if-eq v6, v3, :cond_17

    goto :goto_e

    :cond_17
    move v6, v0

    :goto_f
    if-eqz v6, :cond_18

    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    invoke-interface {p1, p2, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_18
    const/16 v4, 0x8

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    const/16 v7, 0x14

    if-eqz v6, :cond_19

    :goto_10
    move v6, v2

    goto :goto_11

    :cond_19
    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    if-eq v6, v7, :cond_1a

    goto :goto_10

    :cond_1a
    move v6, v0

    :goto_11
    if-eqz v6, :cond_1b

    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    invoke-interface {p1, p2, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_1b
    const/16 v4, 0x9

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_1c

    :goto_12
    move v6, v2

    goto :goto_13

    :cond_1c
    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    if-eq v6, v2, :cond_1d

    goto :goto_12

    :cond_1d
    move v6, v0

    :goto_13
    if-eqz v6, :cond_1e

    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    invoke-interface {p1, p2, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_1e
    const/16 v4, 0xa

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_1f

    :goto_14
    move v6, v2

    goto :goto_15

    :cond_1f
    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    if-eq v6, v4, :cond_20

    goto :goto_14

    :cond_20
    move v6, v0

    :goto_15
    if-eqz v6, :cond_21

    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    invoke-interface {p1, p2, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_21
    const/16 v4, 0xb

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_22

    :goto_16
    move v6, v2

    goto :goto_17

    :cond_22
    iget-wide v8, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    const-wide/16 v10, 0x5

    cmp-long v6, v8, v10

    if-eqz v6, :cond_23

    goto :goto_16

    :cond_23
    move v6, v0

    :goto_17
    if-eqz v6, :cond_24

    iget-wide v8, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    invoke-interface {p1, p2, v4, v8, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_24
    const/16 v4, 0xc

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_25

    :goto_18
    move v6, v2

    goto :goto_19

    :cond_25
    iget-boolean v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    if-eq v6, v2, :cond_26

    goto :goto_18

    :cond_26
    move v6, v0

    :goto_19
    if-eqz v6, :cond_27

    iget-boolean v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    invoke-interface {p1, p2, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IZ)V

    :cond_27
    const/16 v4, 0xd

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_28

    :goto_1a
    move v6, v2

    goto :goto_1b

    :cond_28
    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    if-eq v6, v2, :cond_29

    goto :goto_1a

    :cond_29
    move v6, v0

    :goto_1b
    if-eqz v6, :cond_2a

    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    invoke-interface {p1, p2, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_2a
    const/16 v4, 0xe

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v6

    if-eqz v6, :cond_2b

    :goto_1c
    move v6, v2

    goto :goto_1d

    :cond_2b
    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    if-eqz v6, :cond_2c

    goto :goto_1c

    :cond_2c
    move v6, v0

    :goto_1d
    if-eqz v6, :cond_2d

    iget v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    invoke-interface {p1, p2, v4, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_2d
    invoke-interface {p1, p2, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_2e

    :goto_1e
    move v4, v2

    goto :goto_1f

    :cond_2e
    iget-wide v8, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    const-wide/16 v10, 0x64

    cmp-long v4, v8, v10

    if-eqz v4, :cond_2f

    goto :goto_1e

    :cond_2f
    move v4, v0

    :goto_1f
    if-eqz v4, :cond_30

    iget-wide v8, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    invoke-interface {p1, p2, v5, v8, v9}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_30
    const/16 v4, 0x10

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    if-eqz v5, :cond_31

    :goto_20
    move v5, v2

    goto :goto_21

    :cond_31
    iget v5, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    const/16 v6, 0x19

    if-eq v5, v6, :cond_32

    goto :goto_20

    :cond_32
    move v5, v0

    :goto_21
    if-eqz v5, :cond_33

    iget v5, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    invoke-interface {p1, p2, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_33
    const/16 v4, 0x11

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    if-eqz v5, :cond_34

    :goto_22
    move v5, v2

    goto :goto_23

    :cond_34
    iget-object v5, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    .line 113
    new-instance v6, Lkotlinx/serialization/json/JsonObjectBuilder;

    invoke-direct {v6}, Lkotlinx/serialization/json/JsonObjectBuilder;-><init>()V

    .line 115
    invoke-virtual {v6}, Lkotlinx/serialization/json/JsonObjectBuilder;->build()Lkotlinx/serialization/json/JsonObject;

    move-result-object v6

    .line 63
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_35

    goto :goto_22

    :cond_35
    move v5, v0

    :goto_23
    if-eqz v5, :cond_36

    .line 23
    sget-object v5, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    iget-object v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    invoke-interface {p1, p2, v4, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_36
    const/16 v4, 0x12

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    if-eqz v5, :cond_37

    :goto_24
    move v5, v2

    goto :goto_25

    :cond_37
    iget-object v5, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    if-eqz v5, :cond_38

    goto :goto_24

    :cond_38
    move v5, v0

    :goto_25
    if-eqz v5, :cond_39

    new-instance v5, Lkotlinx/serialization/internal/ArrayListSerializer;

    sget-object v6, Lcom/chartboost/heliumsdk/domain/Placement$$serializer;->INSTANCE:Lcom/chartboost/heliumsdk/domain/Placement$$serializer;

    check-cast v6, Lkotlinx/serialization/KSerializer;

    invoke-direct {v5, v6}, Lkotlinx/serialization/internal/ArrayListSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    iget-object v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    invoke-interface {p1, p2, v4, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_39
    const/16 v4, 0x13

    invoke-interface {p1, p2, v4}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v5

    if-eqz v5, :cond_3a

    :goto_26
    move v5, v2

    goto :goto_27

    :cond_3a
    iget-object v5, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    if-eqz v5, :cond_3b

    goto :goto_26

    :cond_3b
    move v5, v0

    :goto_27
    if-eqz v5, :cond_3c

    sget-object v5, Lkotlinx/serialization/internal/StringSerializer;->INSTANCE:Lkotlinx/serialization/internal/StringSerializer;

    check-cast v5, Lkotlinx/serialization/SerializationStrategy;

    iget-object v6, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    invoke-interface {p1, p2, v4, v5, v6}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/descriptors/SerialDescriptor;ILkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)V

    :cond_3c
    invoke-interface {p1, p2, v7}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_3d

    :goto_28
    move v3, v2

    goto :goto_29

    :cond_3d
    iget v4, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    if-eq v4, v3, :cond_3e

    goto :goto_28

    :cond_3e
    move v3, v0

    :goto_29
    if-eqz v3, :cond_3f

    iget v3, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    invoke-interface {p1, p2, v7, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_3f
    const/16 v3, 0x15

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v4

    if-eqz v4, :cond_40

    :goto_2a
    move v4, v2

    goto :goto_2b

    :cond_40
    iget-wide v4, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    const-wide/16 v6, 0xe10

    cmp-long v4, v4, v6

    if-eqz v4, :cond_41

    goto :goto_2a

    :cond_41
    move v4, v0

    :goto_2b
    if-eqz v4, :cond_42

    iget-wide v4, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    invoke-interface {p1, p2, v3, v4, v5}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeLongElement(Lkotlinx/serialization/descriptors/SerialDescriptor;IJ)V

    :cond_42
    const/16 v3, 0x16

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/encoding/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/descriptors/SerialDescriptor;I)Z

    move-result v3

    if-eqz v3, :cond_43

    :goto_2c
    move v0, v2

    goto :goto_2d

    :cond_43
    iget v3, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    if-eq v3, v1, :cond_44

    goto :goto_2c

    :cond_44
    :goto_2d
    if-eqz v0, :cond_45

    const/16 v0, 0x16

    iget p0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    invoke-interface {p1, p2, v0, p0}, Lkotlinx/serialization/encoding/CompositeEncoder;->encodeIntElement(Lkotlinx/serialization/descriptors/SerialDescriptor;II)V

    :cond_45
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    return v0
.end method

.method public final component11()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    return v0
.end method

.method public final component12()J
    .locals 2

    iget-wide v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    return-wide v0
.end method

.method public final component13()Z
    .locals 1

    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    return v0
.end method

.method public final component14()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    return v0
.end method

.method public final component15()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    return v0
.end method

.method public final component16()J
    .locals 2

    iget-wide v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    return-wide v0
.end method

.method public final component17()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    return v0
.end method

.method public final component18()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method

.method public final component19()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chartboost/heliumsdk/domain/Placement;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    return-object v0
.end method

.method public final component20()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    return-object v0
.end method

.method public final component21()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    return v0
.end method

.method public final component22()J
    .locals 2

    iget-wide v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    return-wide v0
.end method

.method public final component23()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    return v0
.end method

.method public final component5()J
    .locals 2

    iget-wide v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    return-wide v0
.end method

.method public final component6()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final component7()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    return v0
.end method

.method public final component8()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    return v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJI)Lcom/chartboost/heliumsdk/domain/AppConfig;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;IIJ",
            "Ljava/util/EnumSet<",
            "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
            ">;IIIIIJZIIJI",
            "Lkotlinx/serialization/json/JsonObject;",
            "Ljava/util/List<",
            "Lcom/chartboost/heliumsdk/domain/Placement;",
            ">;",
            "Ljava/lang/String;",
            "IJI)",
            "Lcom/chartboost/heliumsdk/domain/AppConfig;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move/from16 v11, p11

    move/from16 v12, p12

    move-wide/from16 v13, p13

    move/from16 v15, p15

    move/from16 v16, p16

    move/from16 v17, p17

    move-wide/from16 v18, p18

    move/from16 v20, p20

    move-object/from16 v21, p21

    move-object/from16 v22, p22

    move-object/from16 v23, p23

    move/from16 v24, p24

    move-wide/from16 v25, p25

    move/from16 v27, p27

    const-string v0, "appId"

    move-object/from16 v28, v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterClasses"

    move-object/from16 v1, p2

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metricsEvents"

    move-object/from16 v1, p7

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "credentials"

    move-object/from16 v1, p21

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v29, Lcom/chartboost/heliumsdk/domain/AppConfig;

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-direct/range {v0 .. v27}, Lcom/chartboost/heliumsdk/domain/AppConfig;-><init>(Ljava/lang/String;Ljava/util/Set;IIJLjava/util/EnumSet;IIIIIJZIIJILkotlinx/serialization/json/JsonObject;Ljava/util/List;Ljava/lang/String;IJI)V

    return-object v29
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/chartboost/heliumsdk/domain/AppConfig;

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-wide v3, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    iget-wide v5, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_7
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    if-eq v1, v3, :cond_c

    return v2

    :cond_c
    iget-wide v3, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    iget-wide v5, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_d

    return v2

    :cond_d
    iget-boolean v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    iget-boolean v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    if-eq v1, v3, :cond_e

    return v2

    :cond_e
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    if-eq v1, v3, :cond_f

    return v2

    :cond_f
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    if-eq v1, v3, :cond_10

    return v2

    :cond_10
    iget-wide v3, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    iget-wide v5, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_11

    return v2

    :cond_11
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    if-eq v1, v3, :cond_12

    return v2

    :cond_12
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    :cond_13
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    return v2

    :cond_14
    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    iget-object v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    return v2

    :cond_15
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    iget v3, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    if-eq v1, v3, :cond_16

    return v2

    :cond_16
    iget-wide v3, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    iget-wide v5, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    iget p1, p1, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    if-eq v1, p1, :cond_18

    return v2

    :cond_18
    return v0
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public final getBannerImpressionMinVisibleDips()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    return v0
.end method

.method public final getBannerImpressionMinVisibleDurationMs()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    return v0
.end method

.method public final getBannerLoadTimeoutSeconds()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    return v0
.end method

.method public final getBannerSizeEventDelayMs()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    return-wide v0
.end method

.method public final getCredentials()Lkotlinx/serialization/json/JsonObject;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    return-object v0
.end method

.method public final getDefaultQueueSize()I
    .locals 1

    .line 73
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    return v0
.end method

.method public final getFullscreenLoadTimeoutSeconds()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    return v0
.end method

.method public final getInitializationMetricsPostTimeout()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    return v0
.end method

.method public final getLogLevel()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    return v0
.end method

.method public final getLogLevelString()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    return-object v0
.end method

.method public final getMaxQueueSize()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    return v0
.end method

.method public final getMetricsEvents()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/chartboost/heliumsdk/network/Endpoints$Sdk$Event;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    return-object v0
.end method

.method public final getPartnerInitTimeoutSeconds()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    return v0
.end method

.method public final getPlacements()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/chartboost/heliumsdk/domain/Placement;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    return-object v0
.end method

.method public final getPrebidFetchTimeoutSeconds()J
    .locals 2

    .line 51
    iget-wide v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    return-wide v0
.end method

.method public final getQueueAdTtlSeconds()J
    .locals 2

    .line 71
    iget-wide v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    return-wide v0
.end method

.method public final getShouldNotifyLoads()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    return v0
.end method

.method public final getShowTimeoutSeconds()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    return v0
.end method

.method public final getStartSdkTimeoutSeconds()I
    .locals 1

    .line 45
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    return v0
.end method

.method public final getVisibilityTrackerPollIntervalMs()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    return-wide v0
.end method

.method public final getVisibilityTrackerTraversalLimit()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    return v0
.end method

.method public final hasMinimumAdapters()Z
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final hasMinimumCredentials()Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    invoke-virtual {v1}, Ljava/util/EnumSet;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonObject;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toJsonString()Ljava/lang/String;
    .locals 2

    .line 95
    invoke-static {}, Lcom/chartboost/heliumsdk/utils/HeliumJsonKt;->getHeliumJson()Lkotlinx/serialization/json/Json;

    move-result-object v0

    sget-object v1, Lcom/chartboost/heliumsdk/domain/AppConfig;->Companion:Lcom/chartboost/heliumsdk/domain/AppConfig$Companion;

    invoke-virtual {v1}, Lcom/chartboost/heliumsdk/domain/AppConfig$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v1

    check-cast v1, Lkotlinx/serialization/SerializationStrategy;

    invoke-virtual {v0, v1, p0}, Lkotlinx/serialization/json/Json;->encodeToString(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppConfig(appId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adapterClasses="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->adapterClasses:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", logLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bannerLoadTimeoutSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerLoadTimeoutSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bannerSizeEventDelayMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerSizeEventDelayMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", metricsEvents="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->metricsEvents:Ljava/util/EnumSet;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", fullscreenLoadTimeoutSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->fullscreenLoadTimeoutSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", showTimeoutSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->showTimeoutSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startSdkTimeoutSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->startSdkTimeoutSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", partnerInitTimeoutSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->partnerInitTimeoutSeconds:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", initializationMetricsPostTimeout="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->initializationMetricsPostTimeout:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", prebidFetchTimeoutSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->prebidFetchTimeoutSeconds:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", shouldNotifyLoads="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->shouldNotifyLoads:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bannerImpressionMinVisibleDips="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDips:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bannerImpressionMinVisibleDurationMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->bannerImpressionMinVisibleDurationMs:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visibilityTrackerPollIntervalMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerPollIntervalMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", visibilityTrackerTraversalLimit="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->visibilityTrackerTraversalLimit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", credentials="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->credentials:Lkotlinx/serialization/json/JsonObject;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", placements="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->placements:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", logLevelString="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->logLevelString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", maxQueueSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->maxQueueSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", queueAdTtlSeconds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->queueAdTtlSeconds:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaultQueueSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/chartboost/heliumsdk/domain/AppConfig;->defaultQueueSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
