.class Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "ConfigFileTagProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/htmlcleaner/ConfigFileTagProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConfigParser"
.end annotation


# instance fields
.field private dependencyName:Ljava/lang/String;

.field private tagInfo:Lorg/htmlcleaner/TagInfo;

.field private tagInfoMap:Ljava/util/Map;

.field final synthetic this$0:Lorg/htmlcleaner/ConfigFileTagProvider;


# direct methods
.method constructor <init>(Lorg/htmlcleaner/ConfigFileTagProvider;Ljava/util/Map;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 p1, 0x0

    .line 149
    iput-object p1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    .line 150
    iput-object p1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    .line 154
    iput-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfoMap:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    if-eqz v0, :cond_7

    .line 165
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string p2, "fatal-tags"

    .line 166
    iget-object p3, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string p3, "\");"

    if-eqz p2, :cond_0

    .line 167
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {p2, p1}, Lorg/htmlcleaner/TagInfo;->defineFatalTags(Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {p2}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 169
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tagInfo.defineFatalTags(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    const-string p2, "req-enclosing-tags"

    .line 171
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 172
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {p2, p1}, Lorg/htmlcleaner/TagInfo;->defineRequiredEnclosingTags(Ljava/lang/String;)V

    .line 173
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {p2}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 174
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tagInfo.defineRequiredEnclosingTags(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string p2, "forbidden-tags"

    .line 176
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 177
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {p2, p1}, Lorg/htmlcleaner/TagInfo;->defineForbiddenTags(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {p2}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 179
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tagInfo.defineForbiddenTags(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string p2, "allowed-children-tags"

    .line 181
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 182
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {p2, p1}, Lorg/htmlcleaner/TagInfo;->defineAllowedChildrenTags(Ljava/lang/String;)V

    .line 183
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {p2}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 184
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tagInfo.defineAllowedChildrenTags(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const-string p2, "higher-level-tags"

    .line 186
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 187
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {p2, p1}, Lorg/htmlcleaner/TagInfo;->defineHigherLevelTags(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {p2}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 189
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tagInfo.defineHigherLevelTags(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const-string p2, "close-before-copy-inside-tags"

    .line 191
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 192
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {p2, p1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeCopyInsideTags(Ljava/lang/String;)V

    .line 193
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {p2}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 194
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tagInfo.defineCloseBeforeCopyInsideTags(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string p2, "close-inside-copy-after-tags"

    .line 196
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 197
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {p2, p1}, Lorg/htmlcleaner/TagInfo;->defineCloseInsideCopyAfterTags(Ljava/lang/String;)V

    .line 198
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {p2}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 199
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tagInfo.defineCloseInsideCopyAfterTags(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p2, "close-before-tags"

    .line 201
    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 202
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {p2, p1}, Lorg/htmlcleaner/TagInfo;->defineCloseBeforeTags(Ljava/lang/String;)V

    .line 203
    iget-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {p2}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 204
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tagInfo.defineCloseBeforeTags(\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string p1, "tag"

    .line 243
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 244
    iget-object p1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    if-eqz p1, :cond_0

    .line 245
    iget-object p3, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfoMap:Ljava/util/Map;

    invoke-virtual {p1}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object p1, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {p1}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "this.put(\""

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    invoke-virtual {v0}, Lorg/htmlcleaner/TagInfo;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "\", tagInfo);\n"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 250
    :cond_0
    iput-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    goto :goto_0

    :cond_1
    const-string p1, "tags"

    .line 251
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 252
    iput-object p2, p0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    :cond_2
    :goto_0
    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    sget-object v0, Lorg/htmlcleaner/ConfigFileTagProvider;->parserFactory:Ljavax/xml/parsers/SAXParserFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    const-string v3, "tag"

    .line 212
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v1, "name"

    .line 213
    invoke-interface {v2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "content"

    .line 214
    invoke-interface {v2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "section"

    .line 215
    invoke-interface {v2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "deprecated"

    .line 216
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v5, "unique"

    .line 217
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v5, "ignore-permitted"

    .line 218
    invoke-interface {v2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 219
    invoke-static {v3}, Lorg/htmlcleaner/ContentType;->toValue(Ljava/lang/Object;)Lorg/htmlcleaner/ContentType;

    move-result-object v14

    .line 220
    invoke-static {v4}, Lorg/htmlcleaner/BelongsTo;->toValue(Ljava/lang/Object;)Lorg/htmlcleaner/BelongsTo;

    move-result-object v15

    .line 221
    new-instance v10, Lorg/htmlcleaner/TagInfo;

    const/16 v16, 0x1

    const-string v9, "true"

    const/16 v17, 0x0

    if-eqz v11, :cond_0

    .line 223
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move/from16 v6, v16

    goto :goto_0

    :cond_0
    move/from16 v6, v17

    :goto_0
    if-eqz v12, :cond_1

    .line 224
    invoke-virtual {v9, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v7, v16

    goto :goto_1

    :cond_1
    move/from16 v7, v17

    :goto_1
    if-eqz v13, :cond_2

    .line 225
    invoke-virtual {v9, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v8, v16

    goto :goto_2

    :cond_2
    move/from16 v8, v17

    :goto_2
    sget-object v18, Lorg/htmlcleaner/CloseTag;->required:Lorg/htmlcleaner/CloseTag;

    sget-object v19, Lorg/htmlcleaner/Display;->any:Lorg/htmlcleaner/Display;

    move-object v2, v10

    move-object v3, v1

    move-object v4, v14

    move-object v5, v15

    move-object/from16 p1, v13

    move-object v13, v9

    move-object/from16 v9, v18

    move-object/from16 p2, v12

    move-object v12, v10

    move-object/from16 v10, v19

    invoke-direct/range {v2 .. v10}, Lorg/htmlcleaner/TagInfo;-><init>(Ljava/lang/String;Lorg/htmlcleaner/ContentType;Lorg/htmlcleaner/BelongsTo;ZZZLorg/htmlcleaner/CloseTag;Lorg/htmlcleaner/Display;)V

    iput-object v12, v0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->tagInfo:Lorg/htmlcleaner/TagInfo;

    .line 226
    iget-object v2, v0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->this$0:Lorg/htmlcleaner/ConfigFileTagProvider;

    invoke-static {v2}, Lorg/htmlcleaner/ConfigFileTagProvider;->access$000(Lorg/htmlcleaner/ConfigFileTagProvider;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "tagInfo = new TagInfo(\"#1\", #2, #3, #4, #5, #6);"

    const-string v3, "#1"

    .line 228
    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lorg/htmlcleaner/ContentType;

    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lorg/htmlcleaner/ContentType;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "#2"

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v4, Lorg/htmlcleaner/BelongsTo;

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v15}, Lorg/htmlcleaner/BelongsTo;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#3"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v11, :cond_3

    .line 231
    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move/from16 v2, v16

    goto :goto_3

    :cond_3
    move/from16 v2, v17

    :goto_3
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#4"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_4

    move-object/from16 v2, p2

    .line 232
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v2, v16

    goto :goto_4

    :cond_4
    move/from16 v2, v17

    :goto_4
    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#5"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_5

    move-object/from16 v2, p1

    .line 233
    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_5

    :cond_5
    move/from16 v16, v17

    :goto_5
    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    const-string v3, "#6"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    const-string v2, "tags"

    .line 236
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 237
    iput-object v1, v0, Lorg/htmlcleaner/ConfigFileTagProvider$ConfigParser;->dependencyName:Ljava/lang/String;

    :cond_7
    :goto_6
    return-void
.end method
