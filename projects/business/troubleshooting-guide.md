# TROUBLESHOOTING GUIDE
## Common AI Prompting Problems & Solutions

---

## QUICK DIAGNOSIS

**Find your problem in the table below, then jump to the solution:**

| Problem | Symptom | Quick Fix | Page |
|---------|---------|-----------|------|
| Generic Output | Sounds like everyone else | Add Role + Constraints | 3 |
| Too Long/Wordy | AI won't stop writing | Specify word count | 4 |
| Off-Brand | Doesn't match your voice | Define tone explicitly | 5 |
| Wrong Format | Structure is wrong | Use Output Template | 6 |
| Missing Elements | Forgets key parts | Use Chain-of-Thought | 7 |
| Repetitive | Says same thing different ways | Add constraint "no repetition" | 8 |
| Too Formal | Sounds robotic | Specify "conversational" | 9 |
| Hallucinations | Makes up facts | Add "only use provided info" | 10 |
| Won't Follow Instructions | Ignores your requests | Break into smaller steps | 11 |
| Inconsistent | Different style each time | Use same framework consistently | 12 |

---

## PROBLEM 1: GENERIC, BORING OUTPUT

### Symptoms
- "Write me a marketing email" → "Introducing our amazing product..."
- Sounds like every other AI-generated content
- No personality or unique angle
- Could apply to any company in any industry

### Root Cause
You're giving AI vague instructions with no context, role, or constraints.

### Solution: Use Framework 1 (Role-Context-Task)

**❌ BAD:**
```
Write an email about our software
```

**✅ GOOD:**
```
ROLE: You are a conversion copywriter with 10 years of SaaS experience

CONTEXT: We're launching a project management tool for marketing agencies who struggle with client communication

TASK: Write a launch email that: 1) Opens with a specific story about missed deadlines, 2) Shows how our tool solves it, 3) Includes one client result (50% faster delivery), 4) Has a soft CTA to book a demo. Tone: professional but conversational. Length: 200 words max.
```

### Quick Fix Template
```
You are a [SPECIFIC ROLE] with [EXPERIENCE].

We're creating [CONTENT TYPE] for [SPECIFIC AUDIENCE] who [SPECIFIC PAIN POINT].

Write [OUTPUT] that includes [SPECIFIC REQUIREMENTS].
Tone: [SPECIFIC TONE].
Length: [MAX WORDS].
```

### Prevention
Always include:
- Specific role (not just "writer")
- Target audience with pain point
- Exact requirements (numbered list)
- Tone specification
- Length limit

---

## PROBLEM 2: OUTPUT IS TOO LONG

### Symptoms
- AI writes 500 words when you wanted 200
- Rambling, repetitive content
- Buried lead (main point hidden)
- Won't get to the point

### Root Cause
No length constraint specified, or constraint was vague.

### Solution: Be Specific About Length

**❌ BAD:**
```
Make it short
Keep it brief
Don't make it too long
```

**✅ GOOD:**
```
Length: exactly 150 words
Maximum 3 paragraphs
Under 280 characters (for Twitter)
5 sentences maximum
2-3 sentences per section
```

### Quick Fixes by Content Type

| Content Type | Ideal Length | Constraint to Use |
|--------------|--------------|-------------------|
| Email subject | 40-50 chars | "Under 50 characters" |
| Email body | 150-300 words | "200 words maximum" |
| Social post | 100-150 words | "Under 125 words" |
| Tweet | 280 chars | "Under 280 characters" |
| Headline | 10-15 words | "Under 15 words" |
| Bullet point | 1 line | "One sentence maximum" |
| Ad copy | 50-100 words | "Under 100 words" |

### Advanced Technique: Character Count
For strict limits, use character count:
```
Write a headline in under 60 characters (including spaces)
```

---

## PROBLEM 3: WRONG TONE OR VOICE

### Symptoms
- Too formal/corporate when you wanted casual
- Too casual when you needed professional
- Doesn't match your brand voice
- Inconsistent tone within same piece

### Root Cause
Tone was either not specified or described vaguely.

### Solution: Use Specific Tone Words

**❌ Vague:**
```
Make it friendly
Professional tone
Casual style
```

**✅ Specific:**
```
Tone: Conversational, like talking to a friend over coffee
Tone: Professional but approachable, like a trusted advisor
Tone: Enthusiastic and energetic, like a passionate coach
Tone: Serious and authoritative, like an industry expert
Tone: Witty and slightly sarcastic, like a clever friend
```

### Tone Vocabulary Guide

**For Casual/Conversational:**
- "Like talking to a friend"
- "Conversational, not corporate"
- "Write like you speak"
- "Casual but clear"

**For Professional/Authority:**
- "Trusted advisor"
- "Expert but accessible"
- "Professional without jargon"
- "Authoritative but friendly"

**For Sales/Persuasion:**
- "Enthusiastic but genuine"
- "Confident, not pushy"
- "Passionate believer"
- "Helpful salesperson"

**For Emotional/Story:**
- "Empathetic storyteller"
- "Vulnerable and authentic"
- "Inspiring motivator"
- "Compassionate guide"

### Pro Tip: Provide Examples
Give AI an example of your desired tone:
```
Tone: Similar to this: "Hey, I've been there. Let me show you what actually worked for me..."
```

---

## PROBLEM 4: WRONG FORMAT OR STRUCTURE

### Symptoms
- AI uses paragraphs when you wanted bullets
- Missing sections you needed
- Wrong order of information
- Format keeps changing between attempts

### Root Cause
No format template provided.

### Solution: Use Framework 4 (Output Template)

**❌ BAD:**
```
Write a case study
```

**✅ GOOD:**
```
Write a case study using this exact format:

CLIENT BACKGROUND:
- Company name and industry
- Size/revenue
- Main challenge before working with us

THE PROBLEM:
- Specific pain points
- What they tried before
- Why it wasn't working

OUR SOLUTION:
- What we implemented
- Timeline
- Key features used

THE RESULTS:
- Specific metrics (before vs after)
- Timeframe
- Client quote

KEY TAKEAWAYS:
- Lesson 1
- Lesson 2
- How readers can apply this
```

### Common Format Templates

**Email Format:**
```
Subject Line: [Specific type]
Hook: [First 2 sentences]
Story/Problem: [2-3 sentences]
Solution: [2-3 sentences]
CTA: [Clear next step]
P.S.: [Optional urgency or bonus]
```

**Blog Post Format:**
```
Title: [SEO optimized]
Hook: [First paragraph]
Problem: [Section 1]
Solution: [Section 2]
Proof: [Section 3]
Action Steps: [Section 4]
CTA: [Final paragraph]
```

**Social Post Format:**
```
Hook: [First line - stop the scroll]
Value: [Main content]
Engagement: [Question or CTA]
Hashtags: [3-5 relevant]
```

---

## PROBLEM 5: MISSING KEY ELEMENTS

### Symptoms
- Forgets to include CTA
- Missing social proof you asked for
- Leaves out specific requirements
- Incomplete sections

### Root Cause
Too many requirements in one prompt, or unclear prioritization.

### Solution: Use Framework 3 (Chain-of-Thought)

**❌ BAD:**
```
Write a sales page with headline, subheadline, problem, solution, features, benefits, testimonials, pricing, guarantee, and CTA
```

**✅ GOOD:**
```
Create a sales page section by section:

Step 1: Write the headline and subheadline
Step 2: Write the problem section (2 paragraphs)
Step 3: Write the solution section (2 paragraphs)
Step 4: Write 5 benefit bullets
Step 5: Add 2 testimonials
Step 6: Write pricing section
Step 7: Add guarantee
Step 8: Write final CTA

Combine all sections into complete sales page.
```

### Alternative: Numbered Requirements
If you must do it in one prompt, number the requirements:
```
Include these 5 elements in order:
1. [FIRST - most important]
2. [SECOND]
3. [THIRD]
4. [FOURTH]
5. [FIFTH - least important but required]
```

---

## PROBLEM 6: REPETITIVE OR REDUNDANT

### Symptoms
- Says the same thing 3 different ways
- Uses filler phrases ("In today's world...")
- Circular reasoning
- Padding with unnecessary words

### Root Cause
No constraint against repetition, or length requirement too high.

### Solution: Add "No Repetition" Constraint

**Add this to any prompt:**
```
Constraints:
- Do not repeat the same point in different words
- Each sentence should add new information
- Avoid filler phrases and fluff
- Be concise and direct
- If you can remove a word without losing meaning, remove it
```

### Quick Fix for Existing Output
If AI gives you repetitive content, follow up with:
```
Remove repetition and filler. Make this 30% shorter without losing key points. Every sentence should add new value.
```

---

## PROBLEM 7: TOO FORMAL OR ROBOTIC

### Symptoms
- Uses words like "utilize" instead of "use"
- Overly complex sentence structures
- Sounds like a textbook
- No personality or warmth

### Root Cause
Default AI tone is often formal/academic.

### Solution: Explicitly Request Conversational Tone

**Add to any prompt:**
```
Tone: Write like you're talking to a friend, not writing an essay. Use contractions (don't, can't, won't). Use simple words. Short sentences. Write like you speak.
```

### Words to Avoid List
Give AI a "don't use" list:
```
Do not use these words: utilize, leverage, synergy, holistic, paradigm, facilitate, endeavor, aforementioned, thus, therefore, furthermore, moreover
```

### Conversational Checklist
After generating, check for:
- ✅ Contractions (you're, don't, can't)
- ✅ Short sentences (under 15 words)
- ✅ Simple words (use, not utilize)
- ✅ Personal pronouns (you, I, we)
- ✅ Questions to the reader
- ✅ Active voice (we did, not was done)

---

## PROBLEM 8: AI MAKES THINGS UP (HALLUCINATIONS)

### Symptoms
- Cites fake statistics
- Invents case studies
- Creates fake quotes
- Includes false information presented as fact

### Root Cause
AI is trained to be helpful and will generate plausible-sounding but false information.

### Solution: Add Fact Constraints

**Always include:**
```
Important: Only use facts and statistics I provide below. Do not make up numbers, quotes, or case studies. If you don't have specific information, use placeholders like [INSERT STAT] or [EXAMPLE NEEDED].

Facts you can use:
- [SPECIFIC FACT 1]
- [SPECIFIC FACT 2]
- [SPECIFIC QUOTE from real person]
```

### For Existing Content
If AI hallucinates, follow up with:
```
Replace any made-up statistics with [STAT NEEDED]. Replace any fake quotes with [QUOTE NEEDED]. Flag any claims that need verification with [VERIFY].
```

### Prevention
- Provide real data upfront
- Use placeholders for missing info
- Review all numbers and quotes
- Ask AI to flag uncertain information

---

## PROBLEM 9: AI WON'T FOLLOW INSTRUCTIONS

### Symptoms
- Ignores specific requirements
- Does opposite of what you asked
- Changes format you specified
- Adds things you didn't want

### Root Cause
Instructions were too complex, contradictory, or buried in text.

### Solution: Simplify and Prioritize

**❌ BAD:**
```
Write an email that's friendly but professional, not too long but comprehensive, with a story but also bullet points, and make it persuasive but not pushy, and include these 12 specific elements...
```

**✅ GOOD:**
```
Write an email with these 3 requirements (in order of priority):

1. MUST INCLUDE: A specific customer story about [TOPIC]
2. MUST INCLUDE: 3 bullet points of benefits
3. MUST INCLUDE: Clear CTA to [ACTION]

Tone: Conversational (priority over formal)
Length: Under 300 words (priority over comprehensive)
```

### The "Must Include" Technique
Use this format for critical requirements:
```
MUST INCLUDE:
✓ [Critical element 1]
✓ [Critical element 2]
✓ [Critical element 3]

DO NOT INCLUDE:
✗ [Element to avoid 1]
✗ [Element to avoid 2]
```

---

## PROBLEM 10: INCONISTENT RESULTS

### Symptoms
- Same prompt gives different results each time
- Quality varies wildly
- Sometimes great, sometimes terrible
- Can't reproduce good results

### Root Cause
Not using a consistent framework or template.

### Solution: Create Reusable Templates

**Create a template that works, then reuse it:**

```
EMAIL TEMPLATE (Save this!)
---
ROLE: You are a conversion copywriter with 10 years of [INDUSTRY] experience

CONTEXT: We're writing to [AUDIENCE] who [PAIN POINT]

FORMAT:
Subject: [Type of subject line]
Hook: [2 sentences max]
Story: [3-4 sentences]
Lesson: [2-3 sentences]
CTA: [Clear next step]

REQUIREMENTS:
- Tone: [Conversational/Professional/etc]
- Length: [Word count]
- Must include: [Element 1], [Element 2]
- Do not include: [Element to avoid]
---
```

### Template Library
Save successful prompts as templates:
- "Welcome Email Template"
- "Sales Page Section Template"
- "Social Post Template"
- "Ad Copy Template"

**Reuse the exact same structure every time.**

---

## PROBLEM 11: AI GETS STUCK OR CONFUSED

### Symptoms
- Error messages
- Incomplete output (cuts off mid-sentence)
- Repeats the same phrase over and over
- Gives nonsense or gibberish

### Root Cause
Prompt was too long, too complex, or had formatting issues.

### Solution: Break It Down

**If you have a complex request:**

**❌ BAD:**
```
[One giant prompt with 20 requirements]
```

**✅ GOOD:**
```
Step 1: [Simple task]
[Get output]

Step 2: [Next simple task]
[Get output]

Step 3: [Final task]
[Get output]
```

### Reset Technique
If AI seems confused, start fresh:
```
Let's start over. Forget previous instructions.

New task: [Simple, clear instruction]
```

---

## PROBLEM 12: OUTPUT IS TOO GENERIC (ADVANCED FIX)

### When Framework 1 Isn't Enough

If you've tried Role-Context-Task and still getting generic output, add Framework 2 (Constraints):

```
ROLE: You are a [SPECIFIC EXPERT]
CONTEXT: [SPECIFIC SITUATION]

CONSTRAINTS:
- Must NOT use these words: [list generic words]
- Must include specific example of [TOPIC]
- Must use the phrase "[SPECIFIC PHRASE]" at least once
- Must be written for [SPECIFIC NICHE] specifically
- Cannot sound like generic marketing copy

TASK: [SPECIFIC OUTPUT]
```

### The "Specificity Test"
After generating, ask:
```
Could this apply to any company in any industry? If yes, make it more specific to [YOUR SPECIFIC SITUATION].
```

---

## QUICK REFERENCE: EMERGENCY FIXES

**Copy-paste these for instant improvement:**

### Fix Generic Output
```
Make this more specific to [YOUR AUDIENCE/INDUSTRY]. Add concrete details, specific examples, and remove generic phrases.
```

### Fix Wrong Length
```
Reduce this by 50% while keeping all key points. Remove filler words and repetition.
```

### Fix Wrong Tone
```
Rewrite this in a [CONVERSATIONAL/PROFESSIONAL/FRIENDLY] tone. Use simple words and short sentences.
```

### Fix Missing Elements
```
Add [MISSING ELEMENT] and ensure [REQUIREMENT] is clearly addressed.
```

### Fix Repetition
```
Remove repetitive phrases. Each sentence should add new information.
```

### Fix Format
```
Reformat using this structure: [PROVIDE TEMPLATE]
```

---

## PREVENTION CHECKLIST

Before submitting any prompt, check:

- [ ] Did I specify a specific role?
- [ ] Did I define the target audience?
- [ ] Did I state the exact output format?
- [ ] Did I list specific requirements (numbered)?
- [ ] Did I specify tone?
- [ ] Did I set a length limit?
- [ ] Did I provide real facts (not expect AI to know them)?
- [ ] Did I add constraints if needed?
- [ ] Is the prompt under 500 words?
- [ ] Did I use a framework (1-6)?

**Check all 10 = 90% fewer problems**

---

## WHEN TO GIVE UP AND START OVER

Sometimes it's faster to restart than fix:

**Start over if:**
- You've refined 3+ times and it's still wrong
- The output is completely off-base
- AI keeps ignoring key requirements
- You're spending more time fixing than writing from scratch

**How to restart:**
1. Say: "Let's start fresh. Forget everything above."
2. Use a simpler, clearer prompt
3. Apply lessons learned from what didn't work
4. Use a different framework

---

## REMEMBER

✓ **Most problems = vague prompts**
✓ **Specificity solves 80% of issues**
✓ **Frameworks prevent problems before they happen**
✓ **When in doubt, simplify**
✓ **Save what works, reuse it**

**You now have solutions for every common AI prompting problem.**

---

**Complete Cheat Sheets:**
- ✓ 50 High-Impact Prompts
- ✓ The 6 Frameworks
- ✓ Troubleshooting Guide (this document)

**Next: Module Video Scripts or Email Sequence?**