.class public Lorg/htmlcleaner/CommandLine;
.super Ljava/lang/Object;
.source "CommandLine.java"


# static fields
.field private static final OMITXMLDECL:Ljava/lang/String; = "omitxmldecl"

.field private static final className:Ljava/lang/String; = "org.htmlcleaner.CommandLine"

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    const-class v0, Lorg/htmlcleaner/CommandLine;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 104
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/htmlcleaner/CommandLine;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 84
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    const/16 v4, 0x3d

    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    .line 87
    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    .line 88
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private static getSwitchArgument([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .line 68
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v4, p0, v2

    const/16 v5, 0x3d

    .line 69
    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_0

    .line 71
    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 74
    invoke-static {v4}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3
.end method

.method public static main([Ljava/lang/String;)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/htmlcleaner/XPatherException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, "src"

    const-string v2, ""

    .line 107
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    new-instance v3, Ljava/util/Scanner;

    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v3, v4}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V

    .line 111
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    .line 112
    :goto_0
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v4, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 116
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Output:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 118
    :cond_1
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Usage: java -jar htmlcleanerXX.jar src=<url | file> [htmlver=4] [incharset=<charset>] [dest=<file>] [outcharset=<charset>] [taginfofile=<file>] [options...]"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 120
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "Alternative: java -jar htmlcleanerXX.jar (reads the input from console)"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v5, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 122
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "where options include:"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    outputtype=simple* | compact | browser-compact | pretty"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 124
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    advancedxmlescape=true* | false"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    usecdata=true* | false"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 126
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    usecdatafor=<string value> [script,style]"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 127
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    specialentities=true* | false"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 128
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    unicodechars=true* | false"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 129
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    omitunknowntags=true | false*"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 130
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    treatunknowntagsascontent=true | false*"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 131
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    omitdeprtags=true | false*"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 132
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    treatdeprtagsascontent=true | false*"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 133
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    omitcomments=true | false*"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 134
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    omitxmldecl=true* | false"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 135
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    omitdoctypedecl=true* | false"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 136
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    omithtmlenvelope=true | false*"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    useemptyelementtags=true* | false"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 138
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    allowmultiwordattributes=true* | false"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 139
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    allowhtmlinsideattributes=true | false*"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 140
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    ignoreqe=true | false*"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 141
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    namespacesaware=true* | false"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 142
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    hyphenreplacement=<string value> [=]"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 143
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    prunetags=<string value> []"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    booleanatts=self* | empty | true"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    nodebyxpath=<xpath expression>"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 146
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    allowinvalidxmlattributenames=true | false*"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 147
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    invalidxmlattributenameprefix=<string value> []"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 148
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    t:<sourcetagX>[=<desttag>[,<preserveatts>]]"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 149
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "    t:<sourcetagX>.<destattrY>[=<template>]"

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 150
    invoke-static {v5}, Ljava/lang/System;->exit(I)V

    goto :goto_1

    :cond_2
    move-object v4, v2

    :goto_1
    const-string v5, "incharset"

    .line 154
    invoke-static {v0, v5, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "UTF-8"

    if-eqz v6, :cond_3

    move-object v5, v7

    :cond_3
    const-string v6, "outcharset"

    .line 159
    invoke-static {v0, v6, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 160
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    goto :goto_2

    :cond_4
    move-object v7, v6

    :goto_2
    const-string v6, "htmlver"

    .line 164
    invoke-static {v0, v6, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, "dest"

    .line 165
    invoke-static {v0, v8, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "outputtype"

    .line 166
    invoke-static {v0, v9, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "advancedxmlescape"

    .line 167
    invoke-static {v0, v10, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "usecdata"

    .line 168
    invoke-static {v0, v11, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "usecdatafor"

    .line 169
    invoke-static {v0, v12, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "specialentities"

    .line 170
    invoke-static {v0, v13, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "unicodechars"

    .line 171
    invoke-static {v0, v14, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "omitunknowntags"

    .line 172
    invoke-static {v0, v15, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v3

    const-string v3, "treatunknowntagsascontent"

    .line 173
    invoke-static {v0, v3, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v17, v7

    const-string v7, "omitdeprtags"

    .line 174
    invoke-static {v0, v7, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v18, v9

    const-string v9, "treatdeprtagsascontent"

    .line 175
    invoke-static {v0, v9, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v19, v8

    const-string v8, "omitcomments"

    .line 176
    invoke-static {v0, v8, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v20, v4

    const-string v4, "omitxmldecl"

    .line 177
    invoke-static {v0, v4, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v21, v5

    const-string v5, "omitdoctypedecl"

    .line 178
    invoke-static {v0, v5, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v22, v1

    const-string v1, "omithtmlenvelope"

    .line 179
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v23, v1

    const-string v1, "useemptyelementtags"

    .line 180
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v24, v1

    const-string v1, "allowmultiwordattributes"

    .line 181
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v25, v1

    const-string v1, "allowhtmlinsideattributes"

    .line 182
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v26, v1

    const-string v1, "ignoreqe"

    .line 183
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v27, v1

    const-string v1, "namespacesaware"

    .line 184
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v1

    const-string v1, "hyphenreplacement"

    .line 185
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v29, v1

    const-string v1, "prunetags"

    .line 186
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v30, v1

    const-string v1, "booleanatts"

    .line 187
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v31, v1

    const-string v1, "nodebyxpath"

    .line 188
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v32, v1

    const-string v1, "allowinvalidattributenames"

    .line 190
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v33, v1

    const-string v1, "invalidxmlattributenameprefix"

    .line 191
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v34, v1

    const-string v1, "taginfofile"

    .line 195
    invoke-static {v0, v1, v2}, Lorg/htmlcleaner/CommandLine;->getArgValue([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-nez v35, :cond_5

    .line 197
    new-instance v6, Lorg/htmlcleaner/HtmlCleaner;

    move-object/from16 v35, v5

    new-instance v5, Lorg/htmlcleaner/ConfigFileTagProvider;

    move-object/from16 v36, v4

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v4}, Lorg/htmlcleaner/ConfigFileTagProvider;-><init>(Ljava/io/File;)V

    invoke-direct {v6, v5}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;)V

    goto :goto_3

    :cond_5
    move-object/from16 v36, v4

    move-object/from16 v35, v5

    const-string v1, "4"

    .line 199
    invoke-virtual {v6, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_6

    .line 200
    new-instance v6, Lorg/htmlcleaner/HtmlCleaner;

    sget-object v1, Lorg/htmlcleaner/Html4TagProvider;->INSTANCE:Lorg/htmlcleaner/Html4TagProvider;

    invoke-direct {v6, v1}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;)V

    goto :goto_3

    .line 202
    :cond_6
    new-instance v6, Lorg/htmlcleaner/HtmlCleaner;

    sget-object v1, Lorg/htmlcleaner/Html5TagProvider;->INSTANCE:Lorg/htmlcleaner/Html5TagProvider;

    invoke-direct {v6, v1}, Lorg/htmlcleaner/HtmlCleaner;-><init>(Lorg/htmlcleaner/ITagInfoProvider;)V

    .line 205
    :goto_3
    invoke-virtual {v6}, Lorg/htmlcleaner/HtmlCleaner;->getProperties()Lorg/htmlcleaner/CleanerProperties;

    move-result-object v1

    const-string v4, "quiet"

    .line 211
    invoke-static {v0, v4}, Lorg/htmlcleaner/CommandLine;->getSwitchArgument([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 212
    new-instance v5, Lorg/htmlcleaner/audit/HtmlModificationListenerLogger;

    move-object/from16 v37, v4

    sget-object v4, Lorg/htmlcleaner/CommandLine;->logger:Ljava/util/logging/Logger;

    invoke-direct {v5, v4}, Lorg/htmlcleaner/audit/HtmlModificationListenerLogger;-><init>(Ljava/util/logging/Logger;)V

    invoke-virtual {v1, v5}, Lorg/htmlcleaner/CleanerProperties;->addHtmlModificationListener(Lorg/htmlcleaner/audit/HtmlModificationListener;)V

    goto :goto_4

    :cond_7
    move-object/from16 v37, v4

    .line 214
    :goto_4
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 215
    invoke-static {v15}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v1, v4}, Lorg/htmlcleaner/CleanerProperties;->setOmitUnknownTags(Z)V

    .line 218
    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 219
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setTreatUnknownTagsAsContent(Z)V

    .line 222
    :cond_9
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 223
    invoke-static {v7}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setOmitDeprecatedTags(Z)V

    .line 226
    :cond_a
    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 227
    invoke-static {v9}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setTreatDeprecatedTagsAsContent(Z)V

    .line 230
    :cond_b
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 231
    invoke-static {v10}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setAdvancedXmlEscape(Z)V

    .line 234
    :cond_c
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 235
    invoke-static {v11}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setUseCdataForScriptAndStyle(Z)V

    .line 238
    :cond_d
    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 239
    invoke-virtual {v1, v12}, Lorg/htmlcleaner/CleanerProperties;->setUseCdataFor(Ljava/lang/String;)V

    .line 242
    :cond_e
    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 243
    invoke-static {v13}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setTranslateSpecialEntities(Z)V

    .line 246
    :cond_f
    invoke-virtual {v2, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 247
    invoke-static {v14}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setRecognizeUnicodeChars(Z)V

    .line 250
    :cond_10
    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 251
    invoke-static {v8}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setOmitComments(Z)V

    :cond_11
    move-object/from16 v3, v36

    .line 254
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 255
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setOmitXmlDeclaration(Z)V

    :cond_12
    move-object/from16 v3, v35

    .line 258
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 259
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setOmitDoctypeDeclaration(Z)V

    :cond_13
    move-object/from16 v3, v23

    .line 262
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_14

    .line 263
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setOmitHtmlEnvelope(Z)V

    :cond_14
    move-object/from16 v3, v24

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_15

    .line 267
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setUseEmptyElementTags(Z)V

    :cond_15
    move-object/from16 v3, v25

    .line 270
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_16

    .line 271
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setAllowMultiWordAttributes(Z)V

    :cond_16
    move-object/from16 v3, v26

    .line 274
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 275
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setAllowHtmlInsideAttributes(Z)V

    :cond_17
    move-object/from16 v3, v27

    .line 278
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    .line 279
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setIgnoreQuestAndExclam(Z)V

    :cond_18
    move-object/from16 v3, v28

    .line 282
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 283
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setNamespacesAware(Z)V

    :cond_19
    move-object/from16 v3, v29

    .line 286
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    .line 287
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setHyphenReplacementInComment(Ljava/lang/String;)V

    :cond_1a
    move-object/from16 v3, v30

    .line 290
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1b

    .line 291
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setPruneTags(Ljava/lang/String;)V

    :cond_1b
    move-object/from16 v3, v31

    .line 294
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1c

    .line 295
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setBooleanAttributeValues(Ljava/lang/String;)V

    :cond_1c
    move-object/from16 v3, v33

    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 299
    invoke-static {v3}, Lorg/htmlcleaner/CommandLine;->toBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setAllowInvalidAttributeNames(Z)V

    :cond_1d
    move-object/from16 v3, v34

    .line 302
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1e

    .line 303
    invoke-virtual {v1, v3}, Lorg/htmlcleaner/CleanerProperties;->setInvalidXmlAttributeNamePrefix(Ljava/lang/String;)V

    .line 308
    :cond_1e
    new-instance v3, Ljava/util/TreeMap;

    invoke-direct {v3}, Ljava/util/TreeMap;-><init>()V

    .line 309
    array-length v4, v0

    const/4 v5, 0x0

    move v7, v5

    :goto_5
    if-ge v7, v4, :cond_22

    aget-object v8, v0, v7

    const-string v9, "t:"

    .line 311
    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x2

    if-le v9, v10, :cond_21

    .line 312
    invoke-virtual {v8, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    const/16 v9, 0x3d

    .line 313
    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    if-gtz v9, :cond_1f

    move-object v10, v8

    goto :goto_6

    .line 314
    :cond_1f
    invoke-virtual {v8, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    :goto_6
    if-gtz v9, :cond_20

    const/4 v8, 0x0

    goto :goto_7

    :cond_20
    add-int/lit8 v9, v9, 0x1

    .line 315
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 316
    :goto_7
    invoke-interface {v3, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 319
    :cond_22
    invoke-virtual {v6, v3}, Lorg/htmlcleaner/HtmlCleaner;->initCleanerTransformations(Ljava/util/Map;)V

    .line 321
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 325
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    const-string v8, "http://"

    .line 327
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_25

    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_23

    goto :goto_8

    .line 329
    :cond_23
    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_24

    .line 330
    new-instance v7, Ljava/io/File;

    move-object/from16 v8, v22

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v8, v21

    invoke-virtual {v6, v7, v8}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/io/File;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v6

    goto :goto_9

    :cond_24
    move-object/from16 v7, v20

    .line 332
    invoke-virtual {v6, v7}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v6

    goto :goto_9

    :cond_25
    :goto_8
    move-object/from16 v8, v21

    .line 328
    new-instance v9, Ljava/net/URL;

    invoke-direct {v9, v7}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9, v8}, Lorg/htmlcleaner/HtmlCleaner;->clean(Ljava/net/URL;Ljava/lang/String;)Lorg/htmlcleaner/TagNode;

    move-result-object v6

    :goto_9
    move-object/from16 v7, v32

    .line 337
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 338
    invoke-virtual {v6, v7}, Lorg/htmlcleaner/TagNode;->evaluateXPath(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v7

    .line 340
    :goto_a
    array-length v8, v7

    if-ge v5, v8, :cond_27

    .line 341
    aget-object v8, v7, v5

    instance-of v9, v8, Lorg/htmlcleaner/TagNode;

    if-eqz v9, :cond_26

    .line 342
    check-cast v8, Lorg/htmlcleaner/TagNode;

    .line 343
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v9, "Node successfully found by XPath."

    invoke-virtual {v6, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v6, v8

    goto :goto_b

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 347
    :cond_27
    :goto_b
    array-length v7, v7

    if-ne v5, v7, :cond_28

    .line 348
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Node not found by XPath expression - whole html tree is going to be serialized!"

    invoke-virtual {v5, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_28
    if-eqz v19, :cond_2a

    .line 353
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_c

    .line 356
    :cond_29
    new-instance v2, Ljava/io/FileOutputStream;

    move-object/from16 v5, v19

    invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_d

    .line 354
    :cond_2a
    :goto_c
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_d
    const-string v5, "compact"

    move-object/from16 v7, v18

    .line 361
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 362
    new-instance v5, Lorg/htmlcleaner/CompactXmlSerializer;

    invoke-direct {v5, v1}, Lorg/htmlcleaner/CompactXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    move-object/from16 v8, v17

    invoke-virtual {v5, v6, v2, v8}, Lorg/htmlcleaner/CompactXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    :goto_e
    move-object/from16 v1, v37

    goto :goto_f

    :cond_2b
    move-object/from16 v8, v17

    const-string v5, "browser-compact"

    .line 363
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 364
    new-instance v5, Lorg/htmlcleaner/BrowserCompactXmlSerializer;

    invoke-direct {v5, v1}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    invoke-virtual {v5, v6, v2, v8}, Lorg/htmlcleaner/BrowserCompactXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_e

    :cond_2c
    const-string v5, "pretty"

    .line 365
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 366
    new-instance v5, Lorg/htmlcleaner/PrettyXmlSerializer;

    invoke-direct {v5, v1}, Lorg/htmlcleaner/PrettyXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    invoke-virtual {v5, v6, v2, v8}, Lorg/htmlcleaner/PrettyXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_e

    :cond_2d
    const-string v5, "htmlsimple"

    .line 367
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2e

    .line 368
    new-instance v5, Lorg/htmlcleaner/SimpleHtmlSerializer;

    invoke-direct {v5, v1}, Lorg/htmlcleaner/SimpleHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    invoke-virtual {v5, v6, v2, v8}, Lorg/htmlcleaner/SimpleHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_e

    :cond_2e
    const-string v5, "htmlpretty"

    .line 369
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 370
    new-instance v5, Lorg/htmlcleaner/PrettyHtmlSerializer;

    invoke-direct {v5, v1}, Lorg/htmlcleaner/PrettyHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    invoke-virtual {v5, v6, v2, v8}, Lorg/htmlcleaner/PrettyHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_e

    :cond_2f
    const-string v5, "htmlcompact"

    .line 371
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_30

    .line 372
    new-instance v5, Lorg/htmlcleaner/CompactHtmlSerializer;

    invoke-direct {v5, v1}, Lorg/htmlcleaner/CompactHtmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    invoke-virtual {v5, v6, v2, v8}, Lorg/htmlcleaner/CompactHtmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_e

    .line 374
    :cond_30
    new-instance v5, Lorg/htmlcleaner/SimpleXmlSerializer;

    invoke-direct {v5, v1}, Lorg/htmlcleaner/SimpleXmlSerializer;-><init>(Lorg/htmlcleaner/CleanerProperties;)V

    invoke-virtual {v5, v6, v2, v8}, Lorg/htmlcleaner/SimpleXmlSerializer;->writeToStream(Lorg/htmlcleaner/TagNode;Ljava/io/OutputStream;Ljava/lang/String;)V

    goto :goto_e

    .line 377
    :goto_f
    invoke-static {v0, v1}, Lorg/htmlcleaner/CommandLine;->getSwitchArgument([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 378
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Finished successfully in "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ms."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 381
    :cond_31
    invoke-virtual/range {v16 .. v16}, Ljava/util/Scanner;->close()V

    return-void
.end method

.method private static toBoolean(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "on"

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "yes"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
