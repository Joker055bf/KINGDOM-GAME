.class public Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;
.super Ljava/lang/Object;
.source "ResUtil.java"


# static fields
.field private static final ANIM:Ljava/lang/String; = "anim"

.field private static final ATTR:Ljava/lang/String; = "attr"

.field private static final COLOR:Ljava/lang/String; = "color"

.field private static final DIMEN:Ljava/lang/String; = "dimen"

.field private static final DRAWABLE:Ljava/lang/String; = "drawable"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final INTEGER:Ljava/lang/String; = "integer"

.field private static final LAYOUT:Ljava/lang/String; = "layout"

.field private static final MIPMAP:Ljava/lang/String; = "mipmap"

.field private static final RAW:Ljava/lang/String; = "raw"

.field private static final STRING:Ljava/lang/String; = "string"

.field private static final STYLE:Ljava/lang/String; = "style"

.field private static final STYLEABLE:Ljava/lang/String; = "styleable"

.field public static styleableMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->styleableMap:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAnimId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "anim"

    .line 30
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getAttrId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "attr"

    .line 34
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getColorId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "color"

    .line 38
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDimenId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "dimen"

    .line 54
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getDrawableId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "drawable"

    .line 46
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "id"

    .line 58
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIntegerId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "integer"

    .line 74
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getLayoutId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "layout"

    .line 62
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getMipmapId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "mipmap"

    .line 50
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getRawId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "raw"

    .line 66
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p1, p2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStringId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "string"

    .line 42
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleId(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1

    const-string v0, "style"

    .line 70
    invoke-static {p0, p1, v0}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getStyleable(Landroid/content/Context;Ljava/lang/String;)I
    .locals 0

    .line 125
    invoke-static {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getStyleableArray(Landroid/content/Context;Ljava/lang/String;)[I
    .locals 0

    .line 136
    invoke-static {p0, p1}, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->getStyleableId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method private static getStyleableId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 13

    .line 87
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->styleableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->styleableMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_0
    move-object v0, v1

    :cond_1
    const-string v2, "styleable"

    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, ".R"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 96
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 97
    invoke-virtual {p0}, Ljava/lang/Class;->getClasses()[Ljava/lang/Class;

    move-result-object p0

    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v6, p0, v5

    .line 98
    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 100
    invoke-virtual {v6}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    move v8, v4

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 101
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    .line 103
    sget-object v11, Lcom/t4f/tgs/sdkfileserver/profile/utils/ResUtil;->styleableMap:Ljava/util/HashMap;

    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 105
    invoke-virtual {v9, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    return-object v0

    :catch_0
    move-exception p0

    .line 112
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method
