.class public Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter;
.super Ljava/lang/Object;
.source "PriceInputFilter.java"

# interfaces
.implements Landroid/text/InputFilter;


# static fields
.field private static final transient synthetic $jacocoData:[Z = null

.field private static final COMMA:Ljava/lang/String; = ","

.field private static final INVALID_CHAR_REGEX:Ljava/lang/String; = "[^0-9\\.\\,]+]"

.field private static final PERIOD:Ljava/lang/String; = "."


# instance fields
.field private decimalSeparator:Ljava/lang/String;


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x1b863ed023063359L

    const-string v2, "privacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter"

    const/16 v3, 0xa

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter;->$jacocoInit()[Z

    move-result-object v1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    aput-boolean v4, v1, v2

    .line 27
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    .line 28
    .local v0, "nf":Ljava/text/NumberFormat;
    instance-of v2, v0, Ljava/text/DecimalFormat;

    if-eqz v2, :cond_0

    aput-boolean v4, v1, v4

    .line 30
    check-cast v0, Ljava/text/DecimalFormat;

    .end local v0    # "nf":Ljava/text/NumberFormat;
    invoke-virtual {v0}, Ljava/text/DecimalFormat;->getDecimalFormatSymbols()Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    const/4 v3, 0x2

    aput-boolean v4, v1, v3

    .line 31
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter;->decimalSeparator:Ljava/lang/String;

    .line 32
    const/4 v2, 0x3

    aput-boolean v4, v1, v2

    .line 37
    .restart local v0    # "nf":Ljava/text/NumberFormat;
    :goto_0
    const/4 v2, 0x5

    aput-boolean v4, v1, v2

    return-void

    .line 35
    :cond_0
    invoke-virtual {p1}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/ProductDialogCache;->getPrice()Landroid/support/design/widget/TextInputEditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/design/widget/TextInputEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter;->decimalSeparator:Ljava/lang/String;

    const/4 v2, 0x4

    aput-boolean v4, v1, v2

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/4 v5, 0x1

    invoke-static {}, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter;->$jacocoInit()[Z

    move-result-object v1

    .line 42
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    aput-boolean v5, v1, v3

    .line 43
    const-string v3, "[^0-9\\.\\,]+]"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "cleanedString":Ljava/lang/String;
    const/4 v2, 0x7

    aput-boolean v5, v1, v2

    .line 44
    const-string v2, "."

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x8

    aput-boolean v5, v1, v2

    .line 45
    const-string v2, ","

    iget-object v3, p0, Lprivacyfriendlyshoppinglist/secuso/org/privacyfriendlyshoppinglist/ui/products/dialog/listeners/price/PriceInputFilter;->decimalSeparator:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46
    const/16 v2, 0x9

    aput-boolean v5, v1, v2

    return-object v0
.end method
