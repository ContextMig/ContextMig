.class public Lcom/fsck/k9/activity/setup/SliderPreference;
.super Landroid/preference/DialogPreference;
.source "SliderPreference.java"


# static fields
.field protected static final SEEKBAR_RESOLUTION:I = 0x2710

.field private static final STATE_KEY_SEEK_BAR_VALUE:Ljava/lang/String; = "seek_bar_value"

.field private static final STATE_KEY_SUPER:Ljava/lang/String; = "super"


# instance fields
.field protected mSeekBarValue:I

.field protected mSummaries:[Ljava/lang/CharSequence;

.field protected mValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/setup/SliderPreference;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/activity/setup/SliderPreference;->setup(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    return-void
.end method

.method static synthetic access$000(Lcom/fsck/k9/activity/setup/SliderPreference;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fsck/k9/activity/setup/SliderPreference;
    .param p1, "x1"    # Ljava/lang/Object;

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/setup/SliderPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setup(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 72
    const v1, 0x7f03003d

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/SliderPreference;->setDialogLayoutResource(I)V

    .line 73
    sget-object v1, Lcom/fsck/k9/R$styleable;->SliderPreference:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 75
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/SliderPreference;->setSummary([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void

    .line 76
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 94
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 95
    iget v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mValue:F

    iget-object v2, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    array-length v2, v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 96
    .local v0, "index":I
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 97
    iget-object v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    aget-object v1, v1, v0

    .line 99
    .end local v0    # "index":I
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Landroid/preference/DialogPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0
.end method

.method public getValue()F
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mValue:F

    return v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 4

    .prologue
    .line 139
    iget v2, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mValue:F

    const v3, 0x461c4000    # 10000.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSeekBarValue:I

    .line 140
    invoke-super {p0}, Landroid/preference/DialogPreference;->onCreateDialogView()Landroid/view/View;

    move-result-object v1

    .line 141
    .local v1, "view":Landroid/view/View;
    const v2, 0x7f0c0100

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 142
    .local v0, "seekbar":Landroid/widget/SeekBar;
    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 143
    iget v2, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSeekBarValue:I

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 144
    new-instance v2, Lcom/fsck/k9/activity/setup/SliderPreference$1;

    invoke-direct {v2, p0}, Lcom/fsck/k9/activity/setup/SliderPreference$1;-><init>(Lcom/fsck/k9/activity/setup/SliderPreference;)V

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 162
    return-object v1
.end method

.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 167
    iget v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSeekBarValue:I

    int-to-float v1, v1

    const v2, 0x461c4000    # 10000.0f

    div-float v0, v1, v2

    .line 168
    .local v0, "newValue":F
    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/SliderPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/SliderPreference;->setValue(F)V

    .line 173
    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 174
    return-void

    .line 171
    :cond_0
    iget v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mValue:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/SliderPreference;->callChangeListener(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 188
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    .line 189
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "super"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/DialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 190
    const-string v1, "seek_bar_value"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSeekBarValue:I

    .line 192
    iget v1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSeekBarValue:I

    int-to-float v1, v1

    const v2, 0x461c4000    # 10000.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/SliderPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 193
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 178
    invoke-super {p0}, Landroid/preference/DialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 179
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 180
    .local v0, "state":Landroid/os/Bundle;
    const-string v2, "super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 181
    const-string v2, "seek_bar_value"

    iget v3, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSeekBarValue:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 183
    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mValue:F

    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/SliderPreference;->getPersistedFloat(F)F

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/fsck/k9/activity/setup/SliderPreference;->setValue(F)V

    .line 90
    return-void

    .line 89
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Float;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0
.end method

.method public setSummary(I)V
    .locals 2
    .param p1, "summaryResId"    # I
        .annotation build Landroid/support/annotation/ArrayRes;
        .end annotation
    .end param

    .prologue
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/SliderPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fsck/k9/activity/setup/SliderPreference;->setSummary([Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(I)V

    goto :goto_0
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 111
    return-void
.end method

.method public setSummary([Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "summaries"    # [Ljava/lang/CharSequence;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mSummaries:[Ljava/lang/CharSequence;

    .line 105
    return-void
.end method

.method public setValue(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 127
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 128
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/SliderPreference;->shouldPersist()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/setup/SliderPreference;->persistFloat(F)Z

    .line 131
    :cond_0
    iget v0, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mValue:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 132
    iput p1, p0, Lcom/fsck/k9/activity/setup/SliderPreference;->mValue:F

    .line 133
    invoke-virtual {p0}, Lcom/fsck/k9/activity/setup/SliderPreference;->notifyChanged()V

    .line 135
    :cond_1
    return-void
.end method
