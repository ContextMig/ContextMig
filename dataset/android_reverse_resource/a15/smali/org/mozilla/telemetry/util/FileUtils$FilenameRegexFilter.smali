.class public Lorg/mozilla/telemetry/util/FileUtils$FilenameRegexFilter;
.super Ljava/lang/Object;
.source "FileUtils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/telemetry/util/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilenameRegexFilter"
.end annotation


# instance fields
.field private mCachedMatcher:Ljava/util/regex/Matcher;

.field private final mPattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/mozilla/telemetry/util/FileUtils$FilenameRegexFilter;->mPattern:Ljava/util/regex/Pattern;

    .line 39
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    .line 43
    iget-object v0, p0, Lorg/mozilla/telemetry/util/FileUtils$FilenameRegexFilter;->mCachedMatcher:Ljava/util/regex/Matcher;

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lorg/mozilla/telemetry/util/FileUtils$FilenameRegexFilter;->mPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iput-object v0, p0, Lorg/mozilla/telemetry/util/FileUtils$FilenameRegexFilter;->mCachedMatcher:Ljava/util/regex/Matcher;

    .line 48
    :goto_0
    iget-object v0, p0, Lorg/mozilla/telemetry/util/FileUtils$FilenameRegexFilter;->mCachedMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0

    .line 46
    :cond_0
    iget-object v0, p0, Lorg/mozilla/telemetry/util/FileUtils$FilenameRegexFilter;->mCachedMatcher:Ljava/util/regex/Matcher;

    invoke-virtual {v0, p2}, Ljava/util/regex/Matcher;->reset(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    goto :goto_0
.end method
