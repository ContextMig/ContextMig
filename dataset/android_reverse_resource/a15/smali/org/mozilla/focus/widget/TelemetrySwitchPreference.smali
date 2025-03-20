.class Lorg/mozilla/focus/widget/TelemetrySwitchPreference;
.super Landroid/preference/Preference;
.source "TelemetrySwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    invoke-direct {p0}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->init()V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    invoke-direct {p0}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->init()V

    .line 43
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 46
    const v0, 0x7f0b005e

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->setLayoutResource(I)V

    .line 49
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->setPersistent(Z)V

    .line 50
    return-void
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 54
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 56
    const v6, 0x7f09010d

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    .line 58
    .local v5, "switchWidget":Landroid/widget/Switch;
    invoke-virtual {p0}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lorg/mozilla/focus/telemetry/TelemetryWrapper;->isTelemetryEnabled(Landroid/content/Context;)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 60
    new-instance v6, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$1;

    invoke-direct {v6, p0}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$1;-><init>(Lorg/mozilla/focus/widget/TelemetrySwitchPreference;)V

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 69
    .local v3, "resources":Landroid/content/res/Resources;
    const v6, 0x1020010

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 70
    .local v4, "summary":Landroid/widget/TextView;
    const v6, 0x7f0f00e2

    new-array v7, v10, [Ljava/lang/Object;

    const v8, 0x7f0f0028

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v3, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v6, 0x7f09009b

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 73
    .local v2, "learnMoreLink":Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v6

    or-int/lit8 v6, v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 74
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f060033

    invoke-static {v6, v7}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 75
    new-instance v6, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$2;

    invoke-direct {v6, p0}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$2;-><init>(Lorg/mozilla/focus/widget/TelemetrySwitchPreference;)V

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    new-array v7, v10, [I

    const v8, 0x7f040146

    aput v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 87
    .local v1, "backgroundDrawableArray":Landroid/content/res/TypedArray;
    invoke-virtual {v1, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 88
    .local v0, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    new-instance v6, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$3;

    invoke-direct {v6, p0, v5}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference$3;-><init>(Lorg/mozilla/focus/widget/TelemetrySwitchPreference;Landroid/widget/Switch;)V

    invoke-virtual {p0, v6}, Lorg/mozilla/focus/widget/TelemetrySwitchPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 100
    return-void
.end method
