.class Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$2;
.super Ljava/lang/Object;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic agO:Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

.field final synthetic agP:Landroid/view/textservice/SpellCheckerInfo;


# direct methods
.method constructor <init>(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$2;->agO:Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    iput-object p2, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$2;->agP:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$2;->agO:Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;

    iget-object v1, p0, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings$2;->agP:Landroid/view/textservice/SpellCheckerInfo;

    invoke-static {v0, v1}, Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;->a(Lcom/android/settings_ex/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    .line 234
    return-void
.end method