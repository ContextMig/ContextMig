.class Lcom/beetstra/jutf7/Base64Util;
.super Ljava/lang/Object;
.source "Base64Util.java"


# static fields
.field private static final ALPHABET_LENGTH:I = 0x40


# instance fields
.field private final alphabet:[C

.field private final inverseAlphabet:[I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "alphabet"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x80

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    iput-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    .line 60
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-eq v2, v3, :cond_0

    .line 61
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "alphabet has incorrect length (should be 64, not "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 63
    :cond_0
    new-array v2, v4, [I

    iput-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    .line 64
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    const/4 v3, -0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([II)V

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 66
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    aget-char v0, v2, v1

    .line 67
    .local v0, "ch":C
    if-lt v0, v4, :cond_1

    .line 68
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "invalid character in alphabet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aput v1, v2, v0

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "ch":C
    :cond_2
    return-void
.end method


# virtual methods
.method contains(C)Z
    .locals 2
    .param p1, "ch"    # C

    .prologue
    const/4 v0, 0x0

    .line 92
    const/16 v1, 0x80

    if-lt p1, v1, :cond_1

    .line 94
    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aget v1, v1, p1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method getChar(I)B
    .locals 1
    .param p1, "sextet"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:[C

    aget-char v0, v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method getSextet(B)I
    .locals 1
    .param p1, "ch"    # B

    .prologue
    .line 80
    const/16 v0, 0x80

    if-lt p1, v0, :cond_0

    .line 81
    const/4 v0, -0x1

    .line 82
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:[I

    aget v0, v0, p1

    goto :goto_0
.end method
