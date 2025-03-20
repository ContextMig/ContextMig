.class public Lcom/fsck/k9/preferences/TimePickerPreference;
.super Landroid/preference/DialogPreference;
.source "TimePickerPreference.java"

# interfaces
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# static fields
.field public static final VALIDATION_EXPRESSION:Ljava/lang/String; = "[0-2]*[0-9]:[0-5]*[0-9]"


# instance fields
.field private defaultValue:Ljava/lang/String;

.field private originalHour:I

.field private originalMinute:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    iput v0, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalHour:I

    .line 42
    iput v0, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalMinute:I

    .line 49
    invoke-direct {p0}, Lcom/fsck/k9/preferences/TimePickerPreference;->initialize()V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    iput v0, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalHour:I

    .line 42
    iput v0, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalMinute:I

    .line 60
    invoke-direct {p0}, Lcom/fsck/k9/preferences/TimePickerPreference;->initialize()V

    .line 61
    return-void
.end method

.method private getHour()I
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/TimePickerPreference;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "[0-2]*[0-9]:[0-5]*[0-9]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    :cond_0
    const/4 v1, -0x1

    .line 148
    :goto_0
    return v1

    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private getMinute()I
    .locals 3

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/TimePickerPreference;->getTime()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "time":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "[0-2]*[0-9]:[0-5]*[0-9]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 159
    :cond_0
    const/4 v1, -0x1

    .line 162
    :goto_0
    return v1

    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private initialize()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->setPersistent(Z)V

    .line 68
    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->defaultValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCreateDialogView()Landroid/view/View;
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/widget/TimePicker;

    invoke-virtual {p0}, Lcom/fsck/k9/preferences/TimePickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TimePicker;-><init>(Landroid/content/Context;)V

    .line 79
    .local v0, "tp":Landroid/widget/TimePicker;
    invoke-virtual {p0}, Lcom/fsck/k9/preferences/TimePickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 80
    invoke-virtual {v0, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 81
    invoke-direct {p0}, Lcom/fsck/k9/preferences/TimePickerPreference;->getHour()I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalHour:I

    .line 82
    invoke-direct {p0}, Lcom/fsck/k9/preferences/TimePickerPreference;->getMinute()I

    move-result v1

    iput v1, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalMinute:I

    .line 83
    iget v1, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalHour:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalMinute:I

    if-ltz v1, :cond_0

    .line 84
    iget v1, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalHour:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 85
    iget v1, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalMinute:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 88
    :cond_0
    return-object v0
.end method

.method protected onDialogClosed(Z)V
    .locals 7
    .param p1, "positiveResult"    # Z

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 110
    if-nez p1, :cond_0

    .line 111
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->persistString(Ljava/lang/String;)Z

    .line 112
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    iget v3, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalHour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->originalMinute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 114
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    .line 115
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 7
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hour"    # I
    .param p3, "minute"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 99
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->persistString(Ljava/lang/String;)Z

    .line 100
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d:%02d"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fsck/k9/preferences/TimePickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    .line 101
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 124
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setDefaultValue(Ljava/lang/Object;)V

    .line 126
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_1

    .line 135
    .end local p1    # "defaultValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .restart local p1    # "defaultValue":Ljava/lang/Object;
    :cond_1
    move-object v0, p1

    .line 130
    check-cast v0, Ljava/lang/String;

    const-string v1, "[0-2]*[0-9]:[0-5]*[0-9]"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    check-cast p1, Ljava/lang/String;

    .end local p1    # "defaultValue":Ljava/lang/Object;
    iput-object p1, p0, Lcom/fsck/k9/preferences/TimePickerPreference;->defaultValue:Ljava/lang/String;

    goto :goto_0
.end method
