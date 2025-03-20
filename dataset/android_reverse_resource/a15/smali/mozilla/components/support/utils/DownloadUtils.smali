.class public final Lmozilla/components/support/utils/DownloadUtils;
.super Ljava/lang/Object;
.source "DownloadUtils.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDownloadUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DownloadUtils.kt\nmozilla/components/support/utils/DownloadUtils\n*L\n1#1,192:1\n*E\n"
.end annotation


# static fields
.field private static final CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

.field private static final ENCODED_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

.field public static final INSTANCE:Lmozilla/components/support/utils/DownloadUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 31
    new-instance v0, Lmozilla/components/support/utils/DownloadUtils;

    invoke-direct {v0}, Lmozilla/components/support/utils/DownloadUtils;-><init>()V

    sput-object v0, Lmozilla/components/support/utils/DownloadUtils;->INSTANCE:Lmozilla/components/support/utils/DownloadUtils;

    .line 37
    const-string v0, "(inline|attachment)\\s*;\\s*filename\\s*=\\s*(\"((?:\\\\.|[^\"\\\\])*)\"|[^;]*)\\s*(?:;\\s*filename\\*\\s*=\\s*(utf-8|iso-8859-1)\'[^\']*\'(\\S*))?"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmozilla/components/support/utils/DownloadUtils;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, "%[0-9a-f]{2}|[0-9a-z!#$&+-.^_`|~]"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lmozilla/components/support/utils/DownloadUtils;->ENCODED_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final decodeHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "field"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 176
    sget-object v3, Lmozilla/components/support/utils/DownloadUtils;->ENCODED_SYMBOL_PATTERN:Ljava/util/regex/Pattern;

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "field":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 177
    .local v0, "m":Ljava/util/regex/Matcher;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 179
    .local v1, "stream":Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 180
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    .line 182
    .local v2, "symbol":Ljava/lang/String;
    const-string v3, "symbol"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "%"

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v6, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 183
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 189
    .end local v2    # "symbol":Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, p2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "stream.toString(encoding)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public static final guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .param p0, "contentDisposition"    # Ljava/lang/String;
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 63
    const/4 v10, 0x0

    check-cast v10, Ljava/lang/String;

    .line 64
    .local v10, "filename":Ljava/lang/String;
    const/4 v9, 0x0

    check-cast v9, Ljava/lang/String;

    .line 67
    .local v9, "extension":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 68
    sget-object v1, Lmozilla/components/support/utils/DownloadUtils;->INSTANCE:Lmozilla/components/support/utils/DownloadUtils;

    invoke-direct {v1, p0}, Lmozilla/components/support/utils/DownloadUtils;->parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 69
    if-eqz v10, :cond_0

    move-object v1, v10

    .line 70
    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v11, v1, 0x1

    .line 71
    .local v11, "index":I
    if-lez v11, :cond_0

    .line 72
    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "filename":Ljava/lang/String;
    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    .end local v11    # "index":I
    .restart local v10    # "filename":Ljava/lang/String;
    :cond_0
    if-nez v10, :cond_3

    .line 79
    invoke-static/range {p1 .. p1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 80
    .local v7, "decodedUrl":Ljava/lang/String;
    if-eqz v7, :cond_3

    move-object v1, v7

    .line 81
    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x3f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v13

    .line 83
    .local v13, "queryIndex":I
    if-lez v13, :cond_1

    .line 84
    const/4 v1, 0x0

    invoke-virtual {v7, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .end local v7    # "decodedUrl":Ljava/lang/String;
    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    .restart local v7    # "decodedUrl":Ljava/lang/String;
    :cond_1
    const-string v1, "/"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v7, v1, v2, v3, v4}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    move-object v1, v7

    .line 87
    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v1

    add-int/lit8 v11, v1, 0x1

    .line 88
    .restart local v11    # "index":I
    if-lez v11, :cond_3

    .line 89
    if-nez v7, :cond_2

    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "filename":Ljava/lang/String;
    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    .end local v7    # "decodedUrl":Ljava/lang/String;
    .end local v11    # "index":I
    .end local v13    # "queryIndex":I
    .restart local v10    # "filename":Ljava/lang/String;
    :cond_3
    if-nez v10, :cond_4

    .line 97
    const-string v10, "downloadfile"

    :cond_4
    move-object v1, v10

    .line 102
    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v8

    .line 103
    .local v8, "dotIndex":I
    if-gez v8, :cond_9

    .line 104
    if-eqz p2, :cond_5

    .line 105
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 106
    if-eqz v9, :cond_5

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 110
    :cond_5
    if-nez v9, :cond_6

    .line 111
    if-eqz p2, :cond_8

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v2, "Locale.ROOT"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "text/"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 112
    const-string v1, "text/html"

    const/4 v2, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v1, v2}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 113
    const-string v9, ".html"

    .line 139
    :cond_6
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 115
    :cond_7
    const-string v9, ".txt"

    .line 116
    goto :goto_0

    .line 118
    :cond_8
    const-string v9, ".bin"

    .line 119
    goto :goto_0

    .line 122
    :cond_9
    if-eqz p2, :cond_a

    move-object v1, v10

    .line 125
    check-cast v1, Ljava/lang/CharSequence;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->lastIndexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    move-result v12

    .line 126
    .local v12, "lastDotIndex":I
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    .line 127
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v10, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    invoke-virtual {v1, v2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 128
    .local v14, "typeFromExt":Ljava/lang/String;
    if-eqz v14, :cond_a

    const/4 v1, 0x1

    move-object/from16 v0, p2

    invoke-static {v14, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_a

    .line 129
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v1

    move-object/from16 v0, p2

    invoke-virtual {v1, v0}, Landroid/webkit/MimeTypeMap;->getExtensionFromMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    if-eqz v9, :cond_a

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 135
    .end local v12    # "lastDotIndex":I
    .end local v14    # "typeFromExt":Ljava/lang/String;
    :cond_a
    if-nez v9, :cond_b

    .line 136
    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .end local v9    # "extension":Ljava/lang/String;
    const-string v1, "(this as java.lang.String).substring(startIndex)"

    invoke-static {v9, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .restart local v9    # "extension":Ljava/lang/String;
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v10, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .end local v10    # "filename":Ljava/lang/String;
    const-string v1, "(this as java.lang.Strin\u2026ing(startIndex, endIndex)"

    invoke-static {v10, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .restart local v10    # "filename":Ljava/lang/String;
    goto :goto_0
.end method

.method private final parseContentDisposition(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "contentDisposition"    # Ljava/lang/String;

    .prologue
    .line 145
    nop

    .line 146
    :try_start_0
    sget-object v4, Lmozilla/components/support/utils/DownloadUtils;->CONTENT_DISPOSITION_PATTERN:Ljava/util/regex/Pattern;

    check-cast p1, Ljava/lang/CharSequence;

    .end local p1    # "contentDisposition":Ljava/lang/String;
    invoke-virtual {v4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 148
    .local v2, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 150
    const/4 v4, 0x5

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 151
    .local v0, "encodedFileName":Ljava/lang/String;
    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 154
    const-string v4, "encoding"

    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lmozilla/components/support/utils/DownloadUtils;->decodeHeaderField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 169
    .end local v0    # "encodedFileName":Ljava/lang/String;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    :goto_0
    return-object v4

    .line 158
    .restart local v0    # "encodedFileName":Ljava/lang/String;
    .restart local v1    # "encoding":Ljava/lang/String;
    .restart local v2    # "m":Ljava/util/regex/Matcher;
    :cond_0
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 160
    .local v3, "quotedFileName":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 161
    check-cast v3, Ljava/lang/CharSequence;

    .end local v3    # "quotedFileName":Ljava/lang/String;
    const-string v4, "\\\\(.)"

    new-instance v5, Lkotlin/text/Regex;

    invoke-direct {v5, v4}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    const-string v4, "$1"

    invoke-virtual {v5, v3, v4}, Lkotlin/text/Regex;->replace(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 162
    .restart local v3    # "quotedFileName":Ljava/lang/String;
    :cond_1
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    goto :goto_0

    .line 168
    .end local v0    # "encodedFileName":Ljava/lang/String;
    .end local v1    # "encoding":Ljava/lang/String;
    .end local v2    # "m":Ljava/util/regex/Matcher;
    .end local v3    # "quotedFileName":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 169
    :cond_2
    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    .line 166
    :catch_1
    move-exception v4

    goto :goto_1
.end method
