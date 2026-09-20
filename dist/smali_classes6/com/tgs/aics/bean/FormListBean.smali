.class public Lcom/tgs/aics/bean/FormListBean;
.super Lcom/tgs/aics/bean/BaseBean;
.source "FormListBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tgs/aics/bean/FormListBean$Item;
    }
.end annotation


# instance fields
.field private formShowId:Ljava/lang/String;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/FormListBean$Item;",
            ">;"
        }
    .end annotation
.end field

.field private submitText:Ljava/lang/String;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/tgs/aics/bean/BaseBean;-><init>()V

    return-void
.end method

.method public static parseJSON(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/FormListBean$Item;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 54
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_11

    move-object/from16 v3, p0

    .line 55
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 57
    new-instance v5, Lcom/tgs/aics/bean/FormListBean$Item;

    invoke-direct {v5}, Lcom/tgs/aics/bean/FormListBean$Item;-><init>()V

    const-string v6, "id"

    .line 58
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tgs/aics/bean/FormListBean$Item;->fieldId:Ljava/lang/String;

    const-string v6, "type"

    .line 59
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/tgs/aics/bean/FormListBean;->typeParse(Ljava/lang/String;)Lcom/tgs/aics/bean/FieldType;

    move-result-object v6

    iput-object v6, v5, Lcom/tgs/aics/bean/FormListBean$Item;->type:Lcom/tgs/aics/bean/FieldType;

    const-string v6, "name"

    .line 60
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/tgs/aics/bean/FormListBean$Item;->name:Ljava/lang/String;

    const-string v6, "label"

    .line 61
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    iput-object v7, v5, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    .line 62
    iget-object v7, v5, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    const-string v8, "\""

    const-string v9, ","

    const-string v10, "]"

    const-string v11, "["

    const-string v12, ""

    if-eqz v7, :cond_2

    .line 63
    iget-object v7, v5, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 64
    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 65
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v14, v7

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v14, :cond_1

    aget-object v16, v7, v15

    .line 67
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v8, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 69
    :cond_1
    iput-object v13, v5, Lcom/tgs/aics/bean/FormListBean$Item;->label:Ljava/lang/Object;

    :cond_2
    const-string v1, "fieldName"

    .line 72
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    .line 73
    iget-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    if-eqz v1, :cond_5

    .line 74
    iget-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {v1, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v1, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 76
    :cond_3
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v10, v12}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v9, v1

    const/4 v10, 0x0

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v1, v10

    .line 78
    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 80
    :cond_4
    iput-object v7, v5, Lcom/tgs/aics/bean/FormListBean$Item;->fieldName:Ljava/lang/Object;

    :cond_5
    const-string v1, "placeholder"

    .line 83
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->placeholder:Ljava/lang/String;

    const-string v1, "required"

    .line 84
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->required:Z

    const-string v1, "helpText"

    .line 85
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->helpText:Ljava/lang/String;

    const-string v1, "min"

    .line 86
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->min:I

    const-string v1, "max"

    .line 87
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->max:I

    const-string v1, "regExpression"

    .line 88
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->regExpression:Ljava/lang/String;

    const-string v1, "defaultValue"

    .line 89
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->defaultValue:Ljava/lang/Object;

    const-string v1, "numberFormat"

    const/4 v7, -0x1

    .line 90
    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->numberFormat:I

    const-string v1, "numberPrecision"

    .line 91
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->numberPrecision:I

    const-string v1, "dynamic"

    .line 92
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->dynamic:Z

    const-string v1, "convert"

    .line 93
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->convert:Ljava/lang/String;

    const-string v1, "url"

    .line 94
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->url:Ljava/lang/String;

    const-string v1, "selectConfig"

    .line 95
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v7, "value"

    if-eqz v1, :cond_7

    const-string v8, "options"

    .line 97
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 99
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, v5, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    const/4 v8, 0x0

    .line 100
    :goto_3
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 101
    invoke-virtual {v1, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 103
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 104
    invoke-virtual {v9, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v7, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v10, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object v9, v5, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_7
    const-string v1, "mode"

    .line 111
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->mode:Ljava/lang/String;

    const-string v1, "format"

    .line 112
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->format:Ljava/lang/String;

    const-string v1, "text"

    .line 113
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->text:Ljava/lang/String;

    const-string v1, "href"

    .line 114
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->href:Ljava/lang/String;

    const-string v1, "maxCount"

    .line 115
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->maxCount:I

    const-string v1, "isStart"

    .line 116
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->isStart:Z

    .line 118
    iget-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->defaultValue:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 119
    iget-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->defaultValue:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->value:Ljava/lang/String;

    goto/16 :goto_7

    .line 120
    :cond_8
    iget-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->defaultValue:Ljava/lang/Object;

    instance-of v1, v1, Lorg/json/JSONObject;

    if-eqz v1, :cond_b

    .line 121
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    .line 122
    iget-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->defaultValue:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 123
    :goto_4
    iget-object v6, v5, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_a

    .line 124
    iget-object v6, v5, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 125
    iget-object v6, v5, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 128
    :cond_a
    invoke-virtual {v5}, Lcom/tgs/aics/bean/FormListBean$Item;->refreshValue()V

    goto :goto_7

    .line 129
    :cond_b
    iget-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->defaultValue:Ljava/lang/Object;

    instance-of v1, v1, Lorg/json/JSONArray;

    if-eqz v1, :cond_f

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    .line 131
    iget-object v1, v5, Lcom/tgs/aics/bean/FormListBean$Item;->defaultValue:Ljava/lang/Object;

    check-cast v1, Lorg/json/JSONArray;

    const/4 v4, 0x0

    .line 132
    :goto_5
    iget-object v6, v5, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_e

    const/4 v6, 0x0

    .line 133
    :goto_6
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v6, v8, :cond_d

    .line 134
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 135
    iget-object v9, v5, Lcom/tgs/aics/bean/FormListBean$Item;->options:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map;

    invoke-interface {v9, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 136
    iget-object v8, v5, Lcom/tgs/aics/bean/FormListBean$Item;->selectIndexs:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 140
    :cond_e
    invoke-virtual {v5}, Lcom/tgs/aics/bean/FormListBean$Item;->refreshValue()V

    .line 143
    :cond_f
    :goto_7
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_11
    return-object v0
.end method

.method private static typeParse(Ljava/lang/String;)Lcom/tgs/aics/bean/FieldType;
    .locals 2

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "multiple_select"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "number_input"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "date_range"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "video"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_4
    const-string v0, "input"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_5
    const-string v0, "text"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_6
    const-string v0, "date"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_7
    const-string v0, "picture"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_8
    const-string v0, "upload"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_9
    const-string v0, "select"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_a
    const-string v0, "textarea"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 162
    :pswitch_0
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeMultipleSelect:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 158
    :pswitch_1
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeNumberInput:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 166
    :pswitch_2
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeDateRange:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 170
    :pswitch_3
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeVideo:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 156
    :pswitch_4
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeInput:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 152
    :pswitch_5
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeText:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 164
    :pswitch_6
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeDate:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 168
    :pswitch_7
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypePicture:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 172
    :pswitch_8
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeUpload:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 160
    :pswitch_9
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeSelect:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    .line 154
    :pswitch_a
    sget-object p0, Lcom/tgs/aics/bean/FieldType;->FieldTypeTextarea:Lcom/tgs/aics/bean/FieldType;

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3bcc48c6 -> :sswitch_a
        -0x3600cb04 -> :sswitch_9
        -0x31fbf1ff -> :sswitch_8
        -0x226fa302 -> :sswitch_7
        0x2eefae -> :sswitch_6
        0x36452d -> :sswitch_5
        0x5fb57ca -> :sswitch_4
        0x6b0147b -> :sswitch_3
        0x340c916c -> :sswitch_2
        0x52c73b54 -> :sswitch_1
        0x7ea29a0b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getFormShowId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/tgs/aics/bean/FormListBean;->formShowId:Ljava/lang/String;

    return-object v0
.end method

.method public getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/FormListBean$Item;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/tgs/aics/bean/FormListBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public getSubmitText()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/tgs/aics/bean/FormListBean;->submitText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/tgs/aics/bean/FormListBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setFormShowId(Ljava/lang/String;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/tgs/aics/bean/FormListBean;->formShowId:Ljava/lang/String;

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tgs/aics/bean/FormListBean$Item;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/tgs/aics/bean/FormListBean;->items:Ljava/util/List;

    return-void
.end method

.method public setSubmitText(Ljava/lang/String;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/tgs/aics/bean/FormListBean;->submitText:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/tgs/aics/bean/FormListBean;->title:Ljava/lang/String;

    return-void
.end method
