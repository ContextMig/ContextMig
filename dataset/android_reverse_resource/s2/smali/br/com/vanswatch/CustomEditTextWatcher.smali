.class public Lbr/com/vanswatch/CustomEditTextWatcher;
.super Ljava/lang/Object;
.source "CustomEditTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# static fields
.field private static final transient synthetic $jacocoData:[Z


# instance fields
.field private editText:Landroid/widget/EditText;

.field private maxNumbers:I


# direct methods
.method private static synthetic $jacocoInit()[Z
    .locals 4

    sget-object v0, Lbr/com/vanswatch/CustomEditTextWatcher;->$jacocoData:[Z

    if-nez v0, :cond_0

    const-wide v0, 0x55131c9f65b7f25aL    # 6.688370267643166E101

    const-string v2, "br/com/vanswatch/CustomEditTextWatcher"

    const/16 v3, 0x30

    invoke-static {v0, v1, v2, v3}, Lorg/jacoco/agent/rt/internal_b0d6a23/Offline;->getProbes(JLjava/lang/String;I)[Z

    move-result-object v0

    sput-object v0, Lbr/com/vanswatch/CustomEditTextWatcher;->$jacocoData:[Z

    :cond_0
    return-object v0
.end method

.method public constructor <init>(Landroid/widget/EditText;I)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vanswatch/CustomEditTextWatcher;->$jacocoInit()[Z

    move-result-object v0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    .line 19
    iput p2, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->maxNumbers:I

    .line 20
    const/4 v1, 0x0

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method static synthetic access$000(Lbr/com/vanswatch/CustomEditTextWatcher;)Landroid/widget/EditText;
    .locals 4

    .prologue
    invoke-static {}, Lbr/com/vanswatch/CustomEditTextWatcher;->$jacocoInit()[Z

    move-result-object v0

    .line 13
    iget-object v1, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    const/16 v2, 0x2f

    const/4 v3, 0x1

    aput-boolean v3, v0, v2

    return-object v1
.end method

.method private checkDecimalSeparator(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 6

    .prologue
    const/16 v0, 0x2c

    const/4 v5, 0x1

    invoke-static {}, Lbr/com/vanswatch/CustomEditTextWatcher;->$jacocoInit()[Z

    move-result-object v1

    .line 86
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    const/16 v3, 0x1f

    aput-boolean v5, v1, v3

    .line 87
    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v3

    if-ne v3, v0, :cond_0

    const/16 v0, 0x2e

    const/16 v3, 0x20

    aput-boolean v5, v1, v3

    :goto_0
    const/16 v3, 0x22

    aput-boolean v5, v1, v3

    .line 89
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v4

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x23

    aput-boolean v5, v1, v3

    .line 91
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v2, 0x24

    aput-boolean v5, v1, v2

    .line 96
    :goto_1
    const/16 v2, 0x28

    aput-boolean v5, v1, v2

    return-object v0

    .line 87
    :cond_0
    const/16 v3, 0x21

    aput-boolean v5, v1, v3

    goto :goto_0

    .line 91
    :cond_1
    const/16 v3, 0x25

    aput-boolean v5, v1, v3

    .line 92
    iget-object v3, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v3, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v3, 0x26

    aput-boolean v5, v1, v3

    .line 93
    iget-object v3, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v3, v2}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v2, 0x27

    aput-boolean v5, v1, v2

    goto :goto_1
.end method

.method private countDecimalSeparator(Ljava/lang/CharSequence;)I
    .locals 7

    .prologue
    const/4 v3, 0x1

    invoke-static {}, Lbr/com/vanswatch/CustomEditTextWatcher;->$jacocoInit()[Z

    move-result-object v4

    .line 100
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {v2}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v2

    const/16 v5, 0x29

    aput-boolean v3, v4, v5

    .line 101
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 103
    .local v1, "posStart":I
    const/4 v5, -0x1

    if-le v1, v5, :cond_1

    const/16 v5, 0x2a

    aput-boolean v3, v4, v5

    .line 104
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 106
    .local v0, "posEnd":I
    if-ne v1, v0, :cond_0

    const/16 v2, 0x2b

    aput-boolean v3, v4, v2

    move v2, v3

    :goto_0
    const/16 v5, 0x2d

    aput-boolean v3, v4, v5

    .line 108
    .end local v0    # "posEnd":I
    :goto_1
    return v2

    .line 106
    .restart local v0    # "posEnd":I
    :cond_0
    const/4 v2, 0x2

    const/16 v5, 0x2c

    aput-boolean v3, v4, v5

    goto :goto_0

    .line 108
    .end local v0    # "posEnd":I
    :cond_1
    const/4 v2, 0x0

    const/16 v5, 0x2e

    aput-boolean v3, v4, v5

    goto :goto_1
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    invoke-static {}, Lbr/com/vanswatch/CustomEditTextWatcher;->$jacocoInit()[Z

    move-result-object v0

    .line 24
    aput-boolean v1, v0, v1

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    .prologue
    invoke-static {}, Lbr/com/vanswatch/CustomEditTextWatcher;->$jacocoInit()[Z

    move-result-object v0

    .line 28
    const/4 v1, 0x2

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    const/4 v9, 0x1

    invoke-static {}, Lbr/com/vanswatch/CustomEditTextWatcher;->$jacocoInit()[Z

    move-result-object v4

    .line 32
    iget-object v5, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v5, 0x3

    aput-boolean v9, v4, v5

    .line 34
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x4

    aput-boolean v9, v4, v5

    .line 83
    .local v2, "s":Ljava/lang/CharSequence;
    :goto_0
    const/16 v5, 0x1e

    aput-boolean v9, v4, v5

    return-void

    .line 35
    .end local v2    # "s":Ljava/lang/CharSequence;
    :cond_0
    iget v5, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->maxNumbers:I

    const/4 v6, -0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x5

    aput-boolean v9, v4, v5

    .line 36
    iget-object v5, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    const v6, 0x7f02003e

    invoke-virtual {v5, v1, v1, v6, v1}, Landroid/widget/EditText;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    const/4 v5, 0x6

    aput-boolean v9, v4, v5

    .line 38
    iget-object v5, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    new-instance v6, Lbr/com/vanswatch/CustomEditTextWatcher$1;

    iget-object v7, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-direct {v6, p0, v7}, Lbr/com/vanswatch/CustomEditTextWatcher$1;-><init>(Lbr/com/vanswatch/CustomEditTextWatcher;Landroid/widget/TextView;)V

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const/4 v5, 0x7

    aput-boolean v9, v4, v5

    goto :goto_0

    .line 48
    :cond_1
    invoke-direct {p0, p1}, Lbr/com/vanswatch/CustomEditTextWatcher;->checkDecimalSeparator(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .restart local v2    # "s":Ljava/lang/CharSequence;
    const/16 v5, 0x8

    aput-boolean v9, v4, v5

    .line 50
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-static {v5}, Ljava/text/DecimalFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DecimalFormatSymbols;

    move-result-object v5

    const/16 v6, 0x9

    aput-boolean v9, v4, v6

    .line 51
    invoke-direct {p0, v2}, Lbr/com/vanswatch/CustomEditTextWatcher;->countDecimalSeparator(Ljava/lang/CharSequence;)I

    move-result v6

    const/16 v7, 0xa

    aput-boolean v9, v4, v7

    .line 53
    if-eqz v6, :cond_2

    const/16 v7, 0xb

    aput-boolean v9, v4, v7

    .line 57
    :goto_1
    if-gt v6, v9, :cond_4

    const/16 v5, 0x10

    aput-boolean v9, v4, v5

    goto :goto_0

    .line 53
    :cond_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget v8, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->maxNumbers:I

    if-eq v7, v8, :cond_3

    const/16 v7, 0xc

    aput-boolean v9, v4, v7

    goto :goto_1

    :cond_3
    const/16 v5, 0xd

    aput-boolean v9, v4, v5

    .line 54
    iget-object v5, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-interface {v2, v1, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/16 v5, 0xe

    aput-boolean v9, v4, v5

    .line 55
    iget-object v5, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v5, 0xf

    aput-boolean v9, v4, v5

    goto/16 :goto_0

    .line 58
    :cond_4
    const/4 v0, 0x0

    .line 59
    .local v0, "count":I
    const-string v3, ""

    const/16 v6, 0x11

    aput-boolean v9, v4, v6

    .line 61
    const/16 v6, 0x12

    aput-boolean v9, v4, v6

    :goto_2
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v1, v6, :cond_7

    const/16 v6, 0x13

    aput-boolean v9, v4, v6

    .line 63
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5}, Ljava/text/DecimalFormatSymbols;->getDecimalSeparator()C

    move-result v7

    if-eq v6, v7, :cond_5

    const/16 v6, 0x14

    aput-boolean v9, v4, v6

    .line 64
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, "strValue":Ljava/lang/String;
    const/16 v6, 0x15

    aput-boolean v9, v4, v6

    .line 61
    .end local v3    # "strValue":Ljava/lang/String;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .local v1, "i":I
    const/16 v6, 0x1a

    aput-boolean v9, v4, v6

    goto :goto_2

    .line 67
    .end local v1    # "i":I
    :cond_5
    if-eqz v0, :cond_6

    const/16 v6, 0x16

    aput-boolean v9, v4, v6

    .line 70
    :goto_4
    add-int/lit8 v0, v0, 0x1

    const/16 v6, 0x19

    aput-boolean v9, v4, v6

    goto :goto_3

    .line 67
    :cond_6
    const/16 v6, 0x17

    aput-boolean v9, v4, v6

    .line 68
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "strValue":Ljava/lang/String;
    const/16 v6, 0x18

    aput-boolean v9, v4, v6

    goto :goto_4

    .line 75
    .end local v3    # "strValue":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v5, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 76
    if-gt v0, v9, :cond_8

    const/16 v5, 0x1b

    aput-boolean v9, v4, v5

    goto/16 :goto_0

    :cond_8
    const/16 v5, 0x1c

    aput-boolean v9, v4, v5

    .line 77
    iget-object v5, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    iget-object v6, p0, Lbr/com/vanswatch/CustomEditTextWatcher;->editText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    const/16 v5, 0x1d

    aput-boolean v9, v4, v5

    goto/16 :goto_0
.end method
