.class public Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;
.super Ljava/lang/Object;
.source "ContentDispositionParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserConstants;


# static fields
.field private static jj_la1_0:[I


# instance fields
.field private dispositionType:Ljava/lang/String;

.field private jj_expentries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

.field private jj_kind:I

.field private final jj_la1:[I

.field public jj_nt:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

.field private jj_ntk:I

.field private paramNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paramValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

.field public token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 136
    invoke-static {}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1_init_0()V

    .line 137
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    const/4 v5, -0x1

    .line 147
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramNames:Ljava/util/List;

    .line 29
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramValues:Ljava/util/List;

    .line 133
    new-array v2, v6, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    .line 249
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentries:Ljava/util/List;

    .line 251
    iput v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_kind:I

    .line 148
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    new-instance v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    .line 150
    new-instance v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 151
    iput v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    .line 152
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 154
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 5
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramNames:Ljava/util/List;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramValues:Ljava/util/List;

    .line 133
    new-array v1, v4, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentries:Ljava/util/List;

    .line 251
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_kind:I

    .line 172
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-direct {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    .line 173
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    .line 174
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 175
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    .line 176
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    .line 177
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 178
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;)V
    .locals 4
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    .prologue
    const/4 v3, 0x3

    const/4 v2, -0x1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramNames:Ljava/util/List;

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramValues:Ljava/util/List;

    .line 133
    new-array v1, v3, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    .line 249
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentries:Ljava/util/List;

    .line 251
    iput v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_kind:I

    .line 192
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    .line 193
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 194
    iput v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    .line 195
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    .line 196
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 197
    :cond_0
    return-void
.end method

.method private jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .locals 3
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 210
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .local v0, "oldToken":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget-object v1, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 212
    :goto_0
    const/4 v1, -0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    .line 213
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget v1, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->kind:I

    if-ne v1, p1, :cond_1

    .line 214
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    .line 215
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    return-object v1

    .line 211
    :cond_0
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    goto :goto_0

    .line 217
    :cond_1
    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 218
    iput p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_kind:I

    .line 219
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->generateParseException()Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    move-result-object v1

    throw v1
.end method

.method private static jj_la1_init_0()V
    .locals 1

    .prologue
    .line 139
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1_0:[I

    .line 140
    return-void

    .line 139
    nop

    :array_0
    .array-data 4
        0x2
        0x8
        0x1c0000
    .end array-data
.end method

.method private jj_ntk()I
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_nt:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    if-nez v0, :cond_0

    .line 244
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    .line 246
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_nt:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 46
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;-><init>(Ljava/io/InputStream;)V

    .line 48
    .local v0, "parser":Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->parseLine()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 49
    .end local v0    # "parser":Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;
    :catch_0
    move-exception v1

    .line 50
    .local v1, "x":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 51
    return-void
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 159
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 162
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;)V

    .line 164
    new-instance v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 165
    iput v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    .line 166
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 162
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 168
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 182
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 183
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_input_stream:Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/contentdisposition/parser/SimpleCharStream;)V

    .line 184
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 185
    iput v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    .line 186
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    .line 187
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 188
    :cond_0
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;)V
    .locals 3
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    .prologue
    const/4 v2, -0x1

    .line 201
    iput-object p1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    .line 202
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 203
    iput v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    .line 204
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    .line 205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 206
    :cond_0
    return-void
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 290
    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
    .locals 8

    .prologue
    const/16 v7, 0x17

    const/4 v6, 0x1

    .line 255
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 256
    new-array v3, v7, [Z

    .line 257
    .local v3, "la1tokens":[Z
    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_kind:I

    if-ltz v4, :cond_0

    .line 258
    iget v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 259
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_kind:I

    .line 261
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/4 v4, 0x3

    if-ge v1, v4, :cond_3

    .line 262
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    if-ne v4, v5, :cond_2

    .line 263
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v4, 0x20

    if-ge v2, v4, :cond_2

    .line 264
    sget-object v4, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 265
    aput-boolean v6, v3, v2

    .line 263
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 261
    .end local v2    # "j":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 270
    :cond_3
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v7, :cond_5

    .line 271
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_4

    .line 272
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentry:[I

    .line 273
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentry:[I

    const/4 v5, 0x0

    aput v1, v4, v5

    .line 274
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentries:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentry:[I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 277
    :cond_5
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 278
    .local v0, "exptokseq":[[I
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 279
    iget-object v4, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 278
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 281
    :cond_6
    new-instance v4, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;-><init>(Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public getDispositionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->dispositionType:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 227
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    .line 228
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    .line 229
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    return-object v0

    .line 226
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    goto :goto_0
.end method

.method public getParamNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramNames:Ljava/util/List;

    return-object v0
.end method

.method public getParamValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramValues:Ljava/util/List;

    return-object v0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 234
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 235
    .local v1, "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 236
    iget-object v3, v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 235
    .end local v2    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    goto :goto_0

    .line 237
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->token_source:Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->next:Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    goto :goto_1

    .line 239
    .end local v1    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :cond_1
    return-object v2
.end method

.method public final parameter()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 96
    const/16 v2, 0x14

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    .line 97
    .local v0, "attrib":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 98
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->value()Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "val":Ljava/lang/String;
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramNames:Ljava/util/List;

    iget-object v3, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->paramValues:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public final parse()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 76
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    .line 77
    .local v0, "dispositionType":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->dispositionType:Ljava/lang/String;

    .line 80
    :goto_0
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk()I

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 85
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    aput v3, v1, v2

    .line 91
    return-void

    .line 80
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    goto :goto_1

    .line 88
    :pswitch_0
    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 89
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->parameter()V

    goto :goto_0

    .line 80
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public final parseAll()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->parse()V

    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 72
    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->parse()V

    .line 58
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 63
    iget-object v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    aput v2, v0, v1

    .line 66
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 67
    return-void

    .line 58
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    goto :goto_0

    .line 60
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    goto :goto_1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final value()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;
        }
    .end annotation

    .prologue
    const/4 v4, -0x1

    .line 105
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk()I

    move-result v1

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 116
    iget-object v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_la1:[I

    const/4 v2, 0x2

    iget v3, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_gen:I

    aput v3, v1, v2

    .line 117
    invoke-direct {p0, v4}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    .line 118
    new-instance v1, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ParseException;-><init>()V

    throw v1

    .line 105
    :cond_0
    iget v1, p0, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_ntk:I

    goto :goto_0

    .line 107
    :pswitch_0
    const/16 v1, 0x14

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    .line 120
    .local v0, "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :goto_1
    iget-object v1, v0, Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;->image:Ljava/lang/String;

    return-object v1

    .line 110
    .end local v0    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :pswitch_1
    const/16 v1, 0x13

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    .line 111
    .restart local v0    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    goto :goto_1

    .line 113
    .end local v0    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    :pswitch_2
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/contentdisposition/parser/ContentDispositionParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;

    move-result-object v0

    .line 114
    .restart local v0    # "t":Lorg/apache/james/mime4j/field/contentdisposition/parser/Token;
    goto :goto_1

    .line 105
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
