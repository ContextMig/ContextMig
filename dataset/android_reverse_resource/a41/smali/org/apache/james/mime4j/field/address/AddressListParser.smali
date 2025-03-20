.class public Lorg/apache/james/mime4j/field/address/AddressListParser;
.super Ljava/lang/Object;
.source "AddressListParser.java"

# interfaces
.implements Lorg/apache/james/mime4j/field/address/AddressListParserTreeConstants;
.implements Lorg/apache/james/mime4j/field/address/AddressListParserConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;,
        Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;
    }
.end annotation


# static fields
.field private static jj_la1_0:[I

.field private static jj_la1_1:[I


# instance fields
.field private final jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

.field private jj_endpos:I

.field private jj_expentries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[I>;"
        }
    .end annotation
.end field

.field private jj_expentry:[I

.field private jj_gc:I

.field private jj_gen:I

.field jj_input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

.field private jj_kind:I

.field private jj_la:I

.field private final jj_la1:[I

.field private jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

.field private jj_lasttokens:[I

.field private final jj_ls:Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

.field public jj_nt:Lorg/apache/james/mime4j/field/address/Token;

.field private jj_ntk:I

.field private jj_rescan:Z

.field private jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

.field protected jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

.field public token:Lorg/apache/james/mime4j/field/address/Token;

.field public token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 739
    invoke-static {}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_init_0()V

    .line 740
    invoke-static {}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_init_1()V

    .line 741
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 754
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x16

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v2, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    .line 735
    new-array v2, v7, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 748
    const/4 v2, 0x2

    new-array v2, v2, [Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    .line 749
    iput-boolean v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    .line 750
    iput v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    .line 852
    new-instance v2, Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/AddressListParser$1;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    .line 901
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    .line 903
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    .line 904
    const/16 v2, 0x64

    new-array v2, v2, [I

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lasttokens:[I

    .line 758
    :try_start_0
    new-instance v2, Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-direct {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    new-instance v2, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 760
    new-instance v2, Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 761
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 762
    iput v6, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 763
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v7, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 758
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 764
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    new-instance v3, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 765
    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 7
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/16 v6, 0x16

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    .line 735
    new-array v1, v6, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 748
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    .line 749
    iput-boolean v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    .line 750
    iput v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    .line 852
    new-instance v1, Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    .line 901
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    .line 903
    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    .line 904
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lasttokens:[I

    .line 785
    new-instance v1, Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-direct {v1, p1, v5, v5}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    .line 786
    new-instance v1, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;-><init>(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 787
    new-instance v1, Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 788
    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 789
    iput v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 790
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 792
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;)V
    .locals 6
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .prologue
    const/16 v5, 0x16

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 807
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v1, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    .line 735
    new-array v1, v5, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    .line 748
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    .line 749
    iput-boolean v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    .line 750
    iput v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    .line 852
    new-instance v1, Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;-><init>(Lorg/apache/james/mime4j/field/address/AddressListParser$1;)V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    .line 901
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    .line 903
    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    .line 904
    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lasttokens:[I

    .line 808
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 809
    new-instance v1, Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 810
    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 811
    iput v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 812
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 813
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 814
    :cond_1
    return-void
.end method

.method private jj_2_1(I)Z
    .locals 4
    .param p1, "xla"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 640
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 641
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3_1()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_0

    .line 643
    :goto_0
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(II)V

    .line 642
    :goto_1
    return v1

    :cond_0
    move v1, v2

    .line 641
    goto :goto_0

    .line 642
    :catch_0
    move-exception v0

    .line 643
    .local v0, "ls":Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(II)V

    goto :goto_1

    .end local v0    # "ls":Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private jj_2_2(I)Z
    .locals 3
    .param p1, "xla"    # I

    .prologue
    const/4 v2, 0x1

    .line 647
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 648
    :try_start_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 650
    :goto_0
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(II)V

    .line 649
    :goto_1
    return v1

    .line 648
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 649
    :catch_0
    move-exception v0

    .line 650
    .local v0, "ls":Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;
    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(II)V

    move v1, v2

    .line 649
    goto :goto_1

    .line 650
    .end local v0    # "ls":Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;
    :catchall_0
    move-exception v1

    invoke-direct {p0, v2, p1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_save(II)V

    throw v1
.end method

.method private jj_3R_10()Z
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 698
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/Token;
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_12()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 699
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 700
    const/16 v1, 0x12

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 702
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3R_11()Z
    .locals 2

    .prologue
    .line 655
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 656
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 657
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 658
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 659
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 660
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 662
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3R_12()Z
    .locals 2

    .prologue
    .line 686
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 692
    :goto_0
    return v1

    .line 689
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 690
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/Token;
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_13()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 692
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3R_13()Z
    .locals 2

    .prologue
    .line 667
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 668
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/Token;
    const/16 v1, 0x9

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 669
    :cond_0
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 670
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3R_8()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 674
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_9()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v0

    .line 675
    :cond_1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 676
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_10()Z

    move-result v1

    if-nez v1, :cond_0

    .line 677
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_3R_9()Z
    .locals 2

    .prologue
    .line 712
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 713
    .local v0, "xsp":Lorg/apache/james/mime4j/field/address/Token;
    const/16 v1, 0xe

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 715
    const/16 v1, 0x1f

    invoke-direct {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scan_token(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 721
    :goto_0
    return v1

    .line 718
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 719
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_11()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 721
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private jj_3_1()Z
    .locals 1

    .prologue
    .line 681
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 682
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_3_2()Z
    .locals 1

    .prologue
    .line 706
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3R_8()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 707
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private jj_add_error_token(II)V
    .locals 6
    .param p1, "kind"    # I
    .param p2, "pos"    # I

    .prologue
    .line 908
    const/16 v3, 0x64

    if-lt p2, v3, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 909
    :cond_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    add-int/lit8 v3, v3, 0x1

    if-ne p2, v3, :cond_2

    .line 910
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lasttokens:[I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    aput p1, v3, v4

    goto :goto_0

    .line 911
    :cond_2
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    if-eqz v3, :cond_0

    .line 912
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    new-array v3, v3, [I

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    .line 913
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    if-ge v0, v3, :cond_3

    .line 914
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lasttokens:[I

    aget v4, v4, v0

    aput v4, v3, v0

    .line 913
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 916
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 917
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move-object v2, v3

    check-cast v2, [I

    .line 918
    .local v2, "oldentry":[I
    array-length v3, v2

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    array-length v4, v4

    if-ne v3, v4, :cond_4

    .line 919
    const/4 v0, 0x0

    :goto_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 920
    aget v3, v2, v0

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    aget v4, v4, v0

    if-ne v3, v4, :cond_4

    .line 919
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 924
    :cond_5
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 928
    .end local v2    # "oldentry":[I
    :cond_6
    if-eqz p2, :cond_0

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lasttokens:[I

    iput p2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    add-int/lit8 v4, p2, -0x1

    aput p1, v3, v4

    goto :goto_0
.end method

.method private jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    .locals 5
    .param p1, "kind"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 829
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .local v2, "oldToken":Lorg/apache/james/mime4j/field/address/Token;
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v3, v3, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 831
    :goto_0
    const/4 v3, -0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 832
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iget v3, v3, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    if-ne v3, p1, :cond_4

    .line 833
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 834
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    const/16 v4, 0x64

    if-le v3, v4, :cond_3

    .line 835
    const/4 v3, 0x0

    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gc:I

    .line 836
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 837
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    aget-object v0, v3, v1

    .line 838
    .local v0, "c":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    :goto_2
    if-eqz v0, :cond_2

    .line 839
    iget v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->gen:I

    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    if-ge v3, v4, :cond_0

    const/4 v3, 0x0

    iput-object v3, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/Token;

    .line 840
    :cond_0
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    goto :goto_2

    .line 830
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    invoke-virtual {v4}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v4

    iput-object v4, v3, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    goto :goto_0

    .line 836
    .restart local v0    # "c":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    .restart local v1    # "i":I
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 844
    .end local v0    # "c":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    return-object v3

    .line 846
    :cond_4
    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 847
    iput p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    .line 848
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->generateParseException()Lorg/apache/james/mime4j/field/address/ParseException;

    move-result-object v3

    throw v3
.end method

.method private static jj_la1_init_0()V
    .locals 1

    .prologue
    .line 743
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_0:[I

    .line 744
    return-void

    .line 743
    :array_0
    .array-data 4
        0x2
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x50
        -0x7fffbfc0
        -0x7fffbfc0
        -0x7fffbfc0
        0x8
        -0x7fffbfc0
        0x100
        0x108
        0x8
        -0x7fffc000
        -0x7fffc000
        -0x7fffc000
        -0x7fffbe00
        0x200
        -0x7fffc000
        0x4200
        0x200
        0x44000
    .end array-data
.end method

.method private static jj_la1_init_1()V
    .locals 1

    .prologue
    .line 746
    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_1:[I

    .line 747
    return-void

    .line 746
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private jj_ntk()I
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/Token;

    if-nez v0, :cond_0

    .line 896
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    iget v0, v1, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 898
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_nt:Lorg/apache/james/mime4j/field/address/Token;

    iget v0, v0, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_0
.end method

.method private jj_rescan_token()V
    .locals 4

    .prologue
    .line 978
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    .line 979
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    .line 981
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    aget-object v1, v2, v0

    .line 983
    .local v1, "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    :cond_0
    iget v2, v1, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_1

    .line 984
    iget v2, v1, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->arg:I

    iput v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    iget-object v2, v1, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 985
    packed-switch v0, :pswitch_data_0

    .line 990
    :cond_1
    :goto_1
    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    .line 991
    if-nez v1, :cond_0

    .line 979
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 986
    .restart local v1    # "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    :pswitch_0
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3_1()Z

    goto :goto_1

    .line 992
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    :catch_0
    move-exception v2

    goto :goto_2

    .line 987
    .restart local v1    # "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    :pswitch_1
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_3_2()Z
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 994
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    .line 995
    return-void

    .line 985
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private jj_save(II)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "xla"    # I

    .prologue
    .line 998
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    aget-object v0, v2, p1

    .line 999
    .local v0, "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    :goto_0
    iget v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->gen:I

    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    if-le v2, v3, :cond_0

    .line 1000
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    if-nez v2, :cond_1

    new-instance v1, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;-><init>()V

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    .end local v0    # "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    .local v1, "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    move-object v0, v1

    .line 1003
    .end local v1    # "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    .restart local v0    # "p":Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;
    :cond_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    add-int/2addr v2, p2

    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    sub-int/2addr v2, v3

    iput v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->gen:I

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->first:Lorg/apache/james/mime4j/field/address/Token;

    iput p2, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->arg:I

    .line 1004
    return-void

    .line 1001
    :cond_1
    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;->next:Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    goto :goto_0
.end method

.method private jj_scan_token(I)Z
    .locals 4
    .param p1, "kind"    # I

    .prologue
    .line 854
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    if-ne v2, v3, :cond_1

    .line 855
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    .line 856
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    if-nez v2, :cond_0

    .line 857
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    .line 864
    :goto_0
    iget-boolean v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan:Z

    if-eqz v2, :cond_3

    .line 865
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 866
    .local v1, "tok":Lorg/apache/james/mime4j/field/address/Token;
    :goto_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    if-eq v1, v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    goto :goto_1

    .line 859
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/Token;
    :cond_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    goto :goto_0

    .line 862
    :cond_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v2, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    goto :goto_0

    .line 867
    .restart local v0    # "i":I
    .restart local v1    # "tok":Lorg/apache/james/mime4j/field/address/Token;
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_add_error_token(II)V

    .line 869
    .end local v0    # "i":I
    .end local v1    # "tok":Lorg/apache/james/mime4j/field/address/Token;
    :cond_3
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iget v2, v2, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    if-eq v2, p1, :cond_4

    const/4 v2, 0x1

    .line 871
    :goto_2
    return v2

    .line 870
    :cond_4
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la:I

    if-nez v2, :cond_5

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_scanpos:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_lastpos:Lorg/apache/james/mime4j/field/address/Token;

    if-ne v2, v3, :cond_5

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ls:Lorg/apache/james/mime4j/field/address/AddressListParser$LookaheadSuccess;

    throw v2

    .line 871
    :cond_5
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static main([Ljava/lang/String;)V
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 26
    :goto_0
    :try_start_0
    new-instance v0, Lorg/apache/james/mime4j/field/address/AddressListParser;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;-><init>(Ljava/io/InputStream;)V

    .line 27
    .local v0, "parser":Lorg/apache/james/mime4j/field/address/AddressListParser;
    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->parseLine()V

    .line 28
    iget-object v2, v0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v2

    check-cast v2, Lorg/apache/james/mime4j/field/address/SimpleNode;

    const-string v3, "> "

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/SimpleNode;->dump(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    .end local v0    # "parser":Lorg/apache/james/mime4j/field/address/AddressListParser;
    :catch_0
    move-exception v1

    .line 30
    .local v1, "x":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    return-void
.end method


# virtual methods
.method public ReInit(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "stream"    # Ljava/io/InputStream;

    .prologue
    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 770
    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "encoding"    # Ljava/lang/String;

    .prologue
    const/4 v5, -0x1

    .line 773
    :try_start_0
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, p1, p2, v3, v4}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v2, v3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V

    .line 775
    new-instance v2, Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/Token;-><init>()V

    iput-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 776
    iput v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 777
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->reset()V

    .line 778
    const/4 v2, 0x0

    iput v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 779
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v2, 0x16

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    aput v5, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 780
    .end local v0    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    new-instance v3, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 781
    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/Reader;

    .prologue
    const/4 v2, 0x1

    const/4 v3, -0x1

    .line 796
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/apache/james/mime4j/field/address/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    .line 797
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_input_stream:Lorg/apache/james/mime4j/field/address/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->ReInit(Lorg/apache/james/mime4j/field/address/SimpleCharStream;)V

    .line 798
    new-instance v1, Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 799
    iput v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 800
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->reset()V

    .line 801
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 802
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 803
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 804
    :cond_1
    return-void
.end method

.method public ReInit(Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;)V
    .locals 3
    .param p1, "tm"    # Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .prologue
    const/4 v2, -0x1

    .line 818
    iput-object p1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    .line 819
    new-instance v1, Lorg/apache/james/mime4j/field/address/Token;

    invoke-direct {v1}, Lorg/apache/james/mime4j/field/address/Token;-><init>()V

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 820
    iput v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 821
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->reset()V

    .line 822
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 823
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x16

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 824
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_rtns:[Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    new-instance v2, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/AddressListParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 825
    :cond_1
    return-void
.end method

.method public final addr_spec()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 497
    new-instance v2, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/ASTaddr_spec;-><init>(I)V

    .line 498
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTaddr_spec;
    const/4 v0, 0x1

    .line 499
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 500
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 502
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->local_part()V

    .line 503
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 504
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->domain()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 522
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 525
    :cond_0
    return-void

    .line 505
    :catch_0
    move-exception v1

    .line 506
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 507
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 508
    const/4 v0, 0x0

    .line 512
    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 513
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 521
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 522
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_1
    throw v3

    .line 510
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_0

    .line 515
    :cond_3
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    if-eqz v3, :cond_4

    .line 516
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 518
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public final address()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 162
    new-instance v2, Lorg/apache/james/mime4j/field/address/ASTaddress;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/ASTaddress;-><init>(I)V

    .line 163
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTaddress;
    const/4 v0, 0x1

    .line 164
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 165
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 167
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_1(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 168
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->addr_spec()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 211
    :goto_0
    if-eqz v0, :cond_0

    .line 212
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 213
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 216
    :cond_0
    return-void

    .line 170
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 191
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/4 v4, 0x5

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 192
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 193
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 196
    :catch_0
    move-exception v1

    .line 197
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 198
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 199
    const/4 v0, 0x0

    .line 203
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 204
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 211
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 212
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 213
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_2
    throw v3

    .line 170
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 172
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 176
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->phrase()V

    .line 177
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 185
    :pswitch_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/4 v4, 0x4

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 186
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 187
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3

    .line 177
    :cond_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_3

    .line 179
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->group_body()V

    goto :goto_0

    .line 182
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->angle_addr()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 201
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_2

    .line 206
    :cond_6
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    if-eqz v3, :cond_7

    .line 207
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 209
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 170
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 177
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final address_list()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x1

    .line 101
    new-instance v2, Lorg/apache/james/mime4j/field/address/ASTaddress_list;

    invoke-direct {v2, v6}, Lorg/apache/james/mime4j/field/address/ASTaddress_list;-><init>(I)V

    .line 102
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTaddress_list;
    const/4 v0, 0x1

    .line 103
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 104
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 106
    :try_start_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 113
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/4 v4, 0x1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 118
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 123
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/4 v4, 0x2

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-eqz v0, :cond_0

    .line 154
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 155
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 158
    :cond_0
    return-void

    .line 106
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 110
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->address()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 140
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 141
    const/4 v0, 0x0

    .line 145
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 146
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 153
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 154
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 155
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_2
    throw v3

    .line 118
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 126
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 127
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v7, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    .line 134
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/4 v4, 0x3

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    .line 127
    :cond_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 131
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->address()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 143
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_3

    .line 148
    :cond_6
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    if-eqz v3, :cond_7

    .line 149
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 151
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    .line 118
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 127
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public final angle_addr()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x6

    const/4 v6, 0x1

    .line 360
    new-instance v2, Lorg/apache/james/mime4j/field/address/ASTangle_addr;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/ASTangle_addr;-><init>(I)V

    .line 361
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTangle_addr;
    const/4 v0, 0x1

    .line 362
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 363
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 365
    const/4 v3, 0x6

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 366
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 371
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0xa

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 374
    :goto_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->addr_spec()V

    .line 375
    const/4 v3, 0x7

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    if-eqz v0, :cond_0

    .line 392
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 393
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 396
    :cond_0
    return-void

    .line 366
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 368
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->route()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 376
    :catch_0
    move-exception v1

    .line 377
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_3

    .line 378
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 379
    const/4 v0, 0x0

    .line 383
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_4

    .line 384
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 391
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 392
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 393
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_2
    throw v3

    .line 381
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_3
    :try_start_3
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_2

    .line 386
    :cond_4
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    if-eqz v3, :cond_5

    .line 387
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 389
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 366
    nop

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public final disable_tracing()V
    .locals 0

    .prologue
    .line 975
    return-void
.end method

.method public final domain()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 591
    new-instance v1, Lorg/apache/james/mime4j/field/address/ASTdomain;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/ASTdomain;-><init>(I)V

    .line 592
    .local v1, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTdomain;
    const/4 v0, 0x1

    .line 593
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 594
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 596
    :try_start_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 627
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0x15

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 628
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 629
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 632
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 633
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v1, v7}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 634
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_0
    throw v3

    .line 596
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 598
    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v2

    .line 601
    .local v2, "t":Lorg/apache/james/mime4j/field/address/Token;
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    .line 607
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0x13

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 632
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/Token;
    :goto_3
    if-eqz v0, :cond_2

    .line 633
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v1, v7}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 634
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 637
    :cond_2
    return-void

    .line 601
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/Token;
    :cond_3
    :try_start_2
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 610
    :sswitch_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    packed-switch v3, :pswitch_data_0

    .line 615
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0x14

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 618
    :goto_5
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_5

    .line 619
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    const-string v4, "Atoms in domain names must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 610
    :cond_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 612
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v2

    .line 613
    goto :goto_5

    .line 620
    :cond_5
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v2

    goto :goto_1

    .line 624
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/Token;
    :sswitch_2
    const/16 v3, 0x12

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 596
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x12 -> :sswitch_2
    .end sparse-switch

    .line 601
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_1
        0xe -> :sswitch_1
    .end sparse-switch

    .line 610
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method public final enable_tracing()V
    .locals 0

    .prologue
    .line 971
    return-void
.end method

.method public generateParseException()Lorg/apache/james/mime4j/field/address/ParseException;
    .locals 9

    .prologue
    const/16 v8, 0x22

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 934
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 935
    new-array v3, v8, [Z

    .line 936
    .local v3, "la1tokens":[Z
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    if-ltz v4, :cond_0

    .line 937
    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    aput-boolean v6, v3, v4

    .line 938
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_kind:I

    .line 940
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    const/16 v4, 0x16

    if-ge v1, v4, :cond_4

    .line 941
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    aget v4, v4, v1

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    if-ne v4, v5, :cond_3

    .line 942
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    const/16 v4, 0x20

    if-ge v2, v4, :cond_3

    .line 943
    sget-object v4, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_0:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 944
    aput-boolean v6, v3, v2

    .line 946
    :cond_1
    sget-object v4, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1_1:[I

    aget v4, v4, v1

    shl-int v5, v6, v2

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    .line 947
    add-int/lit8 v4, v2, 0x20

    aput-boolean v6, v3, v4

    .line 942
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 940
    .end local v2    # "j":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 952
    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v8, :cond_6

    .line 953
    aget-boolean v4, v3, v1

    if-eqz v4, :cond_5

    .line 954
    new-array v4, v6, [I

    iput-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    .line 955
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    aput v1, v4, v7

    .line 956
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentry:[I

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 952
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 959
    :cond_6
    iput v7, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_endpos:I

    .line 960
    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_rescan_token()V

    .line 961
    invoke-direct {p0, v7, v7}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_add_error_token(II)V

    .line 962
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [[I

    .line 963
    .local v0, "exptokseq":[[I
    const/4 v1, 0x0

    :goto_3
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_7

    .line 964
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_expentries:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aput-object v4, v0, v1

    .line 963
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 966
    :cond_7
    new-instance v4, Lorg/apache/james/mime4j/field/address/ParseException;

    iget-object v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    sget-object v6, Lorg/apache/james/mime4j/field/address/AddressListParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v4, v5, v0, v6}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Lorg/apache/james/mime4j/field/address/Token;[[I[Ljava/lang/String;)V

    return-object v4
.end method

.method public final getNextToken()Lorg/apache/james/mime4j/field/address/Token;
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v0, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 879
    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    .line 880
    iget v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    .line 881
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    return-object v0

    .line 878
    :cond_0
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    iput-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/apache/james/mime4j/field/address/Token;
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 886
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token:Lorg/apache/james/mime4j/field/address/Token;

    .line 887
    .local v1, "t":Lorg/apache/james/mime4j/field/address/Token;
    const/4 v0, 0x0

    .local v0, "i":I
    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/Token;
    .local v2, "t":Lorg/apache/james/mime4j/field/address/Token;
    :goto_0
    if-ge v0, p1, :cond_1

    .line 888
    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    if-eqz v3, :cond_0

    iget-object v1, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .line 887
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/Token;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    move-object v2, v1

    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/Token;
    goto :goto_0

    .line 889
    :cond_0
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->token_source:Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/AddressListParserTokenManager;->getNextToken()Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v1

    iput-object v1, v2, Lorg/apache/james/mime4j/field/address/Token;->next:Lorg/apache/james/mime4j/field/address/Token;

    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/Token;
    .restart local v1    # "t":Lorg/apache/james/mime4j/field/address/Token;
    goto :goto_1

    .line 891
    .end local v1    # "t":Lorg/apache/james/mime4j/field/address/Token;
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/Token;
    :cond_1
    return-object v2
.end method

.method public final group_body()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x5

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 297
    new-instance v2, Lorg/apache/james/mime4j/field/address/ASTgroup_body;

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/ASTgroup_body;-><init>(I)V

    .line 298
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTgroup_body;
    const/4 v0, 0x1

    .line 299
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 300
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 302
    const/4 v3, 0x4

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 303
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 310
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/4 v4, 0x7

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 315
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 320
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0x8

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 335
    const/4 v3, 0x5

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    if-eqz v0, :cond_0

    .line 352
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 353
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 356
    :cond_0
    return-void

    .line 303
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 307
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->mailbox()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_5

    .line 338
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 339
    const/4 v0, 0x0

    .line 343
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_6

    .line 344
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 351
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 352
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 353
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_2
    throw v3

    .line 315
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 323
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 324
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_4

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_4
    sparse-switch v3, :sswitch_data_1

    .line 331
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0x9

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    goto :goto_1

    .line 324
    :cond_4
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_4

    .line 328
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->mailbox()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 341
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_5
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_3

    .line 346
    :cond_6
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    if-eqz v3, :cond_7

    .line 347
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 349
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_7
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 303
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch

    .line 315
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 324
    :sswitch_data_1
    .sparse-switch
        0x6 -> :sswitch_1
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V
    .locals 1
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/Node;

    .prologue
    .line 68
    check-cast p1, Lorg/apache/james/mime4j/field/address/SimpleNode;

    .end local p1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->lastToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 69
    return-void
.end method

.method jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V
    .locals 1
    .param p1, "n"    # Lorg/apache/james/mime4j/field/address/Node;

    .prologue
    .line 64
    check-cast p1, Lorg/apache/james/mime4j/field/address/SimpleNode;

    .end local p1    # "n":Lorg/apache/james/mime4j/field/address/Node;
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->getToken(I)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/james/mime4j/field/address/SimpleNode;->firstToken:Lorg/apache/james/mime4j/field/address/Token;

    .line 65
    return-void
.end method

.method public final local_part()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x1f

    const/4 v6, -0x1

    .line 529
    new-instance v1, Lorg/apache/james/mime4j/field/address/ASTlocal_part;

    const/16 v3, 0xa

    invoke-direct {v1, v3}, Lorg/apache/james/mime4j/field/address/ASTlocal_part;-><init>(I)V

    .line 530
    .local v1, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTlocal_part;
    const/4 v0, 0x1

    .line 531
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 532
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 534
    :try_start_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_0
    sparse-switch v3, :sswitch_data_0

    .line 542
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0xf

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 543
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 544
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_0

    .line 583
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v1, v8}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 584
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_0
    throw v3

    .line 534
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 536
    :sswitch_0
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v2

    .line 548
    .local v2, "t":Lorg/apache/james/mime4j/field/address/Token;
    :goto_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    sparse-switch v3, :sswitch_data_1

    .line 555
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0x10

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    if-eqz v0, :cond_2

    .line 583
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v1, v8}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 584
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 587
    :cond_2
    return-void

    .line 539
    .end local v2    # "t":Lorg/apache/james/mime4j/field/address/Token;
    :sswitch_1
    const/16 v3, 0x1f

    :try_start_2
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v2

    .line 540
    .restart local v2    # "t":Lorg/apache/james/mime4j/field/address/Token;
    goto :goto_1

    .line 548
    :cond_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_2

    .line 558
    :sswitch_2
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_5

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_3
    packed-switch v3, :pswitch_data_0

    .line 563
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0x11

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 566
    :goto_4
    iget v3, v2, Lorg/apache/james/mime4j/field/address/Token;->kind:I

    if-eq v3, v7, :cond_4

    iget-object v3, v2, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    iget-object v4, v2, Lorg/apache/james/mime4j/field/address/Token;->image:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x2e

    if-eq v3, v4, :cond_6

    .line 567
    :cond_4
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    const-string v4, "Words in local part must be separated by \'.\'"

    invoke-direct {v3, v4}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 558
    :cond_5
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_3

    .line 560
    :pswitch_0
    const/16 v3, 0x9

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v2

    .line 561
    goto :goto_4

    .line 568
    :cond_6
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_7

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_5
    sparse-switch v3, :sswitch_data_2

    .line 576
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0x12

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 577
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 578
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3

    .line 568
    :cond_7
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_5

    .line 570
    :sswitch_3
    const/16 v3, 0xe

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    move-result-object v2

    .line 571
    goto/16 :goto_1

    .line 573
    :sswitch_4
    const/16 v3, 0x1f

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 574
    goto/16 :goto_1

    .line 534
    nop

    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_1
    .end sparse-switch

    .line 548
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_2
        0xe -> :sswitch_2
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 558
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    .line 568
    :sswitch_data_2
    .sparse-switch
        0xe -> :sswitch_3
        0x1f -> :sswitch_4
    .end sparse-switch
.end method

.method public final mailbox()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v4, -0x1

    .line 220
    new-instance v2, Lorg/apache/james/mime4j/field/address/ASTmailbox;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/ASTmailbox;-><init>(I)V

    .line 221
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTmailbox;
    const/4 v0, 0x1

    .line 222
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 223
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 225
    const v3, 0x7fffffff

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_2_2(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->addr_spec()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :goto_0
    if-eqz v0, :cond_0

    .line 258
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2, v6}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 259
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 262
    :cond_0
    return-void

    .line 228
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v4, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 237
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/4 v4, 0x6

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 238
    const/4 v3, -0x1

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 239
    new-instance v3, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v3}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v3
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    :catch_0
    move-exception v1

    .line 243
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 244
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 245
    const/4 v0, 0x0

    .line 249
    :goto_2
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    .line 250
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 257
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 258
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v2, v6}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 259
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_2
    throw v3

    .line 228
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 230
    :sswitch_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->angle_addr()V

    goto :goto_0

    .line 234
    :sswitch_1
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->name_addr()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 247
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_2

    .line 252
    :cond_5
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    if-eqz v3, :cond_6

    .line 253
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 255
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 228
    nop

    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
        0x1f -> :sswitch_1
    .end sparse-switch
.end method

.method public final name_addr()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 266
    new-instance v2, Lorg/apache/james/mime4j/field/address/ASTname_addr;

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/ASTname_addr;-><init>(I)V

    .line 267
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTname_addr;
    const/4 v0, 0x1

    .line 268
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 269
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 271
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->phrase()V

    .line 272
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->angle_addr()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    if-eqz v0, :cond_0

    .line 289
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2, v5}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 290
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 293
    :cond_0
    return-void

    .line 273
    :catch_0
    move-exception v1

    .line 274
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_2

    .line 275
    :try_start_1
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 276
    const/4 v0, 0x0

    .line 280
    :goto_0
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_3

    .line 281
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 288
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_1

    .line 289
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v2, v5}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 290
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_1
    throw v3

    .line 278
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_2
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_0

    .line 283
    :cond_3
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    if-eqz v3, :cond_4

    .line 284
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 286
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public parseAddress()Lorg/apache/james/mime4j/field/address/ASTaddress;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 47
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->parseAddress0()V

    .line 48
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTaddress;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddress0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->address()V

    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 92
    return-void
.end method

.method public parseAddressList()Lorg/apache/james/mime4j/field/address/ASTaddress_list;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 38
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->parseAddressList0()V

    .line 39
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTaddress_list;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseAddressList0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->address_list()V

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 87
    return-void
.end method

.method public final parseLine()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->address_list()V

    .line 73
    iget v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 78
    iget-object v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/4 v1, 0x0

    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v2, v0, v1

    .line 81
    :goto_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 82
    return-void

    .line 73
    :cond_0
    iget v0, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 75
    :pswitch_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    goto :goto_1

    .line 73
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public parseMailbox()Lorg/apache/james/mime4j/field/address/ASTmailbox;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->parseMailbox0()V

    .line 57
    iget-object v1, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->rootNode()Lorg/apache/james/mime4j/field/address/Node;

    move-result-object v1

    check-cast v1, Lorg/apache/james/mime4j/field/address/ASTmailbox;
    :try_end_0
    .catch Lorg/apache/james/mime4j/field/address/TokenMgrError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, "tme":Lorg/apache/james/mime4j/field/address/TokenMgrError;
    new-instance v1, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-virtual {v0}, Lorg/apache/james/mime4j/field/address/TokenMgrError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseMailbox0()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->mailbox()V

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 97
    return-void
.end method

.method public final phrase()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    .line 458
    new-instance v1, Lorg/apache/james/mime4j/field/address/ASTphrase;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lorg/apache/james/mime4j/field/address/ASTphrase;-><init>(I)V

    .line 459
    .local v1, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTphrase;
    const/4 v0, 0x1

    .line 460
    .local v0, "jjtc000":Z
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v2, v1}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 461
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 465
    :sswitch_0
    :try_start_0
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    .line 473
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v3, 0xd

    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v4, v2, v3

    .line 474
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 475
    new-instance v2, Lorg/apache/james/mime4j/field/address/ParseException;

    invoke-direct {v2}, Lorg/apache/james/mime4j/field/address/ParseException;-><init>()V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 488
    :catchall_0
    move-exception v2

    if-eqz v0, :cond_0

    .line 489
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v1, v5}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 490
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_0
    throw v2

    .line 465
    :cond_1
    :try_start_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_0

    .line 467
    :sswitch_1
    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 477
    :goto_1
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v2, v3, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v2

    :goto_2
    sparse-switch v2, :sswitch_data_1

    .line 483
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v3, 0xe

    iget v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v4, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 488
    if-eqz v0, :cond_2

    .line 489
    iget-object v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v2, v1, v5}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 490
    invoke-virtual {p0, v1}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 493
    :cond_2
    return-void

    .line 470
    :sswitch_2
    const/16 v2, 0x1f

    :try_start_2
    invoke-direct {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    goto :goto_1

    .line 477
    :cond_3
    iget v2, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 465
    :sswitch_data_0
    .sparse-switch
        0xe -> :sswitch_1
        0x1f -> :sswitch_2
    .end sparse-switch

    .line 477
    :sswitch_data_1
    .sparse-switch
        0xe -> :sswitch_0
        0x1f -> :sswitch_0
    .end sparse-switch
.end method

.method public final route()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/james/mime4j/field/address/ParseException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 400
    new-instance v2, Lorg/apache/james/mime4j/field/address/ASTroute;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lorg/apache/james/mime4j/field/address/ASTroute;-><init>(I)V

    .line 401
    .local v2, "jjtn000":Lorg/apache/james/mime4j/field/address/ASTroute;
    const/4 v0, 0x1

    .line 402
    .local v0, "jjtc000":Z
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->openNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 403
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeOpenNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 405
    const/16 v3, 0x8

    :try_start_0
    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 406
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->domain()V

    .line 409
    :goto_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_1

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_1
    sparse-switch v3, :sswitch_data_0

    .line 415
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0xb

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 433
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    if-eqz v0, :cond_0

    .line 450
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2, v7}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 451
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 454
    :cond_0
    return-void

    .line 409
    :cond_1
    :try_start_1
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    goto :goto_1

    .line 428
    :pswitch_0
    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 420
    :sswitch_0
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I

    if-ne v3, v6, :cond_3

    invoke-direct {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 425
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_la1:[I

    const/16 v4, 0xc

    iget v5, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_gen:I

    aput v5, v3, v4

    .line 430
    const/16 v3, 0x8

    invoke-direct {p0, v3}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_consume_token(I)Lorg/apache/james/mime4j/field/address/Token;

    .line 431
    invoke-virtual {p0}, Lorg/apache/james/mime4j/field/address/AddressListParser;->domain()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 434
    :catch_0
    move-exception v1

    .line 435
    .local v1, "jjte000":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 436
    :try_start_2
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3, v2}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->clearNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    .line 437
    const/4 v0, 0x0

    .line 441
    :goto_3
    instance-of v3, v1, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_5

    .line 442
    check-cast v1, Ljava/lang/RuntimeException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 449
    :catchall_0
    move-exception v3

    if-eqz v0, :cond_2

    .line 450
    iget-object v4, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v4, v2, v7}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->closeNodeScope(Lorg/apache/james/mime4j/field/address/Node;Z)V

    .line 451
    invoke-virtual {p0, v2}, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtreeCloseNodeScope(Lorg/apache/james/mime4j/field/address/Node;)V

    :cond_2
    throw v3

    .line 420
    :cond_3
    :try_start_3
    iget v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jj_ntk:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 439
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_4
    :try_start_4
    iget-object v3, p0, Lorg/apache/james/mime4j/field/address/AddressListParser;->jjtree:Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;

    invoke-virtual {v3}, Lorg/apache/james/mime4j/field/address/JJTAddressListParserState;->popNode()Lorg/apache/james/mime4j/field/address/Node;

    goto :goto_3

    .line 444
    :cond_5
    instance-of v3, v1, Lorg/apache/james/mime4j/field/address/ParseException;

    if-eqz v3, :cond_6

    .line 445
    check-cast v1, Lorg/apache/james/mime4j/field/address/ParseException;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1

    .line 447
    .restart local v1    # "jjte000":Ljava/lang/Throwable;
    :cond_6
    check-cast v1, Ljava/lang/Error;

    .end local v1    # "jjte000":Ljava/lang/Throwable;
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 409
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 420
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
