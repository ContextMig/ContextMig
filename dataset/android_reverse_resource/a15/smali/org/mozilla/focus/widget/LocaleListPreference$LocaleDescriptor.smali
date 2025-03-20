.class final Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;
.super Ljava/lang/Object;
.source "LocaleListPreference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/focus/widget/LocaleListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LocaleDescriptor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLLATOR:Ljava/text/Collator;


# instance fields
.field private final nativeName:Ljava/lang/String;

.field public final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 146
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->COLLATOR:Ljava/text/Collator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    .line 152
    invoke-static {p1}, Lorg/mozilla/focus/locale/Locales;->parseLocaleCode(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;-><init>(Ljava/util/Locale;Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;Ljava/lang/String;)V
    .locals 6
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->tag:Ljava/lang/String;

    .line 160
    invoke-static {}, Lorg/mozilla/focus/widget/LocaleListPreference;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    invoke-static {}, Lorg/mozilla/focus/widget/LocaleListPreference;->access$000()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 166
    .local v1, "displayName":Ljava/lang/String;
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 168
    const-string v2, "GeckoLocaleList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Display name is empty. Using "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->nativeName:Ljava/lang/String;

    .line 184
    :goto_1
    return-void

    .line 163
    .end local v1    # "displayName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, p1}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "displayName":Ljava/lang/String;
    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->getDirectionality(C)B

    move-result v0

    .line 177
    .local v0, "directionality":B
    if-nez v0, :cond_2

    .line 178
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 179
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->nativeName:Ljava/lang/String;

    goto :goto_1

    .line 183
    :cond_2
    iput-object v1, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->nativeName:Ljava/lang/String;

    goto :goto_1
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 144
    check-cast p1, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;

    invoke-virtual {p0, p1}, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->compareTo(Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;)I
    .locals 3
    .param p1, "another"    # Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;

    .prologue
    .line 216
    sget-object v0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->COLLATOR:Ljava/text/Collator;

    iget-object v1, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->nativeName:Ljava/lang/String;

    iget-object v2, p1, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->nativeName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 201
    instance-of v1, p1, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;

    if-eqz v1, :cond_0

    .line 202
    check-cast p1, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->compareTo(Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 204
    :cond_0
    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->nativeName:Ljava/lang/String;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->tag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isUsable(Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;)Z
    .locals 4
    .param p1, "validator"    # Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 228
    iget-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->tag:Ljava/lang/String;

    const-string v3, "bn-IN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 235
    iget-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->nativeName:Ljava/lang/String;

    const-string v3, "\u09ac\u09be\u0982\u09b2\u09be"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    iget-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->tag:Ljava/lang/String;

    const-string v3, "or"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->tag:Ljava/lang/String;

    const-string v3, "my"

    .line 247
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->tag:Ljava/lang/String;

    const-string v3, "pa-IN"

    .line 248
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->tag:Ljava/lang/String;

    const-string v3, "gu-IN"

    .line 249
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->tag:Ljava/lang/String;

    const-string v3, "bn-IN"

    .line 250
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 251
    :cond_2
    iget-object v2, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->nativeName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/mozilla/focus/widget/LocaleListPreference$CharacterValidator;->characterIsMissingInFont(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    .line 256
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lorg/mozilla/focus/widget/LocaleListPreference$LocaleDescriptor;->nativeName:Ljava/lang/String;

    return-object v0
.end method
