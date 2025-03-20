.class public Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;
.super Lcom/github/mikephil/charting/formatter/FormattedStringCache;
.source "FormattedStringCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mikephil/charting/formatter/FormattedStringCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrimFloat"
.end annotation


# instance fields
.field private cachedStrings:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cachedValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/text/Format;)V
    .locals 1
    .param p1, "format"    # Ljava/text/Format;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Lcom/github/mikephil/charting/formatter/FormattedStringCache;-><init>(Ljava/text/Format;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;->cachedValues:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;->cachedStrings:Ljava/util/ArrayList;

    .line 127
    return-void
.end method


# virtual methods
.method public getFormattedValue(F)Ljava/lang/String;
    .locals 7
    .param p1, "value"    # F

    .prologue
    .line 135
    const/4 v0, 0x0

    .line 136
    .local v0, "alreadyHasValue":Z
    iget-object v4, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;->cachedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 137
    .local v3, "vCount":I
    const/4 v2, -0x1

    .line 138
    .local v2, "sIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 139
    iget-object v4, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;->cachedValues:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, p1

    if-nez v4, :cond_2

    .line 140
    move v2, v1

    .line 141
    const/4 v0, 0x1

    .line 145
    :cond_0
    if-nez v0, :cond_1

    .line 146
    iget-object v4, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;->cachedValues:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v4, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;->cachedStrings:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;->mFormat:Ljava/text/Format;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v4, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;->cachedValues:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 151
    :cond_1
    iget-object v4, p0, Lcom/github/mikephil/charting/formatter/FormattedStringCache$PrimFloat;->cachedStrings:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    return-object v4

    .line 138
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
