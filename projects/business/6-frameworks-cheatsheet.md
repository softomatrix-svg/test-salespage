# THE 6 FRAMEWORKS CHEAT SHEET
## Your Quick Reference Guide to AI Prompt Mastery

---

## OVERVIEW: THE 6 FRAMEWORKS AT A GLANCE

| Framework | Best For | Difficulty | Time to Master |
|-----------|----------|------------|----------------|
| **1. Role-Context-Task** | Getting relevant, on-brand output | Easy | 10 minutes |
| **2. Strategic Constraint** | Forcing creativity & uniqueness | Medium | 20 minutes |
| **3. Chain-of-Thought** | Complex, multi-step tasks | Medium | 15 minutes |
| **4. Output Template** | Specific formatting needs | Easy | 5 minutes |
| **5. Iterative Refinement** | Improving good to great | Medium | 25 minutes |
| **6. Multi-Persona** | Diverse perspectives & angles | Advanced | 30 minutes |

**Golden Rule:** Start with Framework 1. Master it before moving to others. Most marketers only need Frameworks 1-4 for 90% of tasks.

---

## FRAMEWORK 1: ROLE-CONTEXT-TASK ARCHITECTURE

### What It Does
Gets AI to adopt the right perspective before generating output. Instead of vague instructions, you create complete context that guides the model's "thinking."

### The Formula
```
ROLE: You are a [SPECIFIC EXPERT/ROLE] with [CREDENTIALS/EXPERIENCE]

CONTEXT: We're creating [CONTENT TYPE] for [TARGET AUDIENCE] who [SITUATION/PAIN POINT]

TASK: Write [SPECIFIC OUTPUT] that includes [REQUIREMENTS]. Tone: [TONE]. Length: [LENGTH].
```

### When to Use It
- ✅ Anytime you need brand-consistent output
- ✅ When you want expert-level quality
- ✅ For content that needs specific industry knowledge
- ✅ When generic outputs aren't working

### Real Example

**❌ BAD (Generic):**
```
"Write an email about our project management tool"
```
**Result:** Generic, boring, unusable

**✅ GOOD (Framework 1):**
```
ROLE: You are a conversion copywriter with 10 years of experience writing emails for SaaS companies.

CONTEXT: We're creating a launch email for a project management tool aimed at marketing agencies struggling with client communication and missed deadlines.

TASK: Write a launch email that includes: 1) A compelling subject line, 2) A story about a specific pain point, 3) How the tool solves it, 4) Social proof, 5) A clear CTA. Tone: professional but conversational. Length: under 200 words.
```
**Result:** Specific, engaging, ready to use

### Quick Template (Copy-Paste)
```
You are a [ROLE] with [EXPERIENCE]. Write [CONTENT TYPE] for [AUDIENCE] who [PAIN POINT/GOAL]. Include: [LIST REQUIREMENTS]. Tone: [TONE]. Length: [LENGTH].
```

### Pro Tips
- Be specific about the role (not just "writer" but "conversion copywriter with 10 years experience")
- Include the audience's exact pain point
- List requirements in order of importance
- Specify tone (conversational, professional, enthusiastic, etc.)

---

## FRAMEWORK 2: STRATEGIC CONSTRAINT METHOD

### What It Does
Paradoxically, adding limitations increases creativity and uniqueness. This framework uses carefully chosen constraints to force AI into generating distinctive, non-generic content.

### The Formula
```
Write [CONTENT TYPE] about [TOPIC] with these constraints:
- Must [CONSTRAINT 1]
- Cannot [CONSTRAINT 2]
- Must include [CONSTRAINT 3]
- Must be under [CONSTRAINT 4]
- Must avoid [CONSTRAINT 5]
```

### When to Use It
- ✅ When output feels too generic
- ✅ To force creative angles
- ✅ To differentiate from competitors
- ✅ When you need to stand out
- ✅ To avoid clichés

### Real Example

**❌ BAD (No constraints):**
```
"Write a headline for our fitness program"
```
**Result:** "Get Fit Fast with Our Amazing Program" (boring)

**✅ GOOD (Framework 2):**
```
Write 5 headlines for our fitness program with these constraints:
- Must NOT use words: "fit," "amazing," "transform," "results"
- Must speak to busy professionals specifically
- Must include a specific time frame (not "fast")
- Must be under 10 words
- Must create curiosity, not make promises
```
**Result:** 
- "The 20-Minute Routine That Changed My Mornings"
- "Why I Stopped Going to the Gym (And Got Healthier)"
- "What 90 Days of Consistency Actually Looks Like"

### Common Constraints to Try
- **Word restrictions:** "Don't use [COMMON WORDS]"
- **Format constraints:** "Must be exactly [NUMBER] words"
- **Tone constraints:** "Must sound [SPECIFIC TONE], not [GENERIC TONE]"
- **Angle constraints:** "Must approach from [UNEXPECTED ANGLE]"
- **Time constraints:** "Must reference [SPECIFIC TIME FRAME]"

### Quick Template (Copy-Paste)
```
Write [CONTENT] with these constraints:
- Must NOT use: [FORBIDDEN WORDS]
- Must be [FORMAT CONSTRAINT]
- Must include [REQUIRED ELEMENT]
- Must avoid [COMMON APPROACH]
- Must [UNIQUE CONSTRAINT]
```

### Pro Tips
- The more specific the constraint, the better the output
- Combine multiple constraints for maximum effect
- Use this when you're getting repetitive results
- Constraints force AI to think differently

---

## FRAMEWORK 3: CHAIN-OF-THOUGHT SEQUENCING

### What It Does
Breaks complex marketing tasks into logical steps. AI executes each step flawlessly, building toward a complete, cohesive result.

### The Formula
```
Create [COMPLEX OUTPUT] using this step-by-step process:

Step 1: [FIRST TASK - foundation]
Step 2: [SECOND TASK - build on step 1]
Step 3: [THIRD TASK - add complexity]
Step 4: [FOURTH TASK - refine]
Step 5: [FIFTH TASK - finalize]

Combine all steps into the final [OUTPUT FORMAT].
```

### When to Use It
- ✅ Complex content (email sequences, sales pages)
- ✅ Multi-part deliverables
- ✅ When you need consistency across sections
- ✅ For detailed, comprehensive output
- ✅ When one-step prompts fail

### Real Example

**❌ BAD (One-step):**
```
"Write a 5-email welcome sequence"
```
**Result:** Disjointed, repetitive, low quality

**✅ GOOD (Framework 3):**
```
Create a 5-email welcome sequence using this step-by-step process:

Step 1: Write Email 1 (Welcome + Origin Story) - 200 words, introduce founder's struggle
Step 2: Write Email 2 (Value Proof) - 250 words, share case study with specific results  
Step 3: Write Email 3 (Methodology) - 250 words, explain the unique approach
Step 4: Write Email 4 (Objection Handling) - 200 words, address #1 objection with proof
Step 5: Write Email 5 (Soft Pitch) - 300 words, introduce offer with guarantee

Each email should reference the previous one. Include subject lines. Combine into complete sequence.
```
**Result:** Cohesive, logical, high-quality sequence

### Common Use Cases
- **Email sequences:** Welcome, launch, nurture
- **Sales pages:** Section by section
- **Course outlines:** Module by module
- **Campaign planning:** Phase by phase
- **Content series:** Part by part

### Quick Template (Copy-Paste)
```
Create [COMPLEX OUTPUT] using this process:
Step 1: [TASK 1] - [SPECIFICS]
Step 2: [TASK 2] - [SPECIFICS]
Step 3: [TASK 3] - [SPECIFICS]
Step 4: [TASK 4] - [SPECIFICS]
Step 5: [TASK 5] - [SPECIFICS]

Ensure each step connects to the next. Combine into final [FORMAT].
```

### Pro Tips
- Always specify what each step should accomplish
- Tell AI to connect steps (not just list them)
- Use this for anything over 500 words
- Break complex into simple, then build up

---

## FRAMEWORK 4: OUTPUT TEMPLATE SPECIFICATION

### What It Does
Ensures AI produces exactly the format you need—whether that's a specific email structure, social post format, or content outline. Eliminates formatting guesswork.

### The Formula
```
Create [CONTENT] using this exact format:

[SECTION 1 NAME]:
- [Element 1]
- [Element 2]
- [Element 3]

[SECTION 2 NAME]:
- [Element 1]
- [Element 2]

[SECTION 3 NAME]:
- [Element 1]
- [Element 2]
- [Element 3]
- [Element 4]

[FINAL SECTION]:
- [Call to action]
```

### When to Use It
- ✅ When format matters (templates, frameworks)
- ✅ For consistent output across multiple pieces
- ✅ When you need specific sections
- ✅ For repeatable content types
- ✅ To maintain brand consistency

### Real Example

**❌ BAD (Vague format):**
```
"Write a case study"
```
**Result:** Random structure, missing key elements

**✅ GOOD (Framework 4):**
```
Write a case study using this exact format:

CLIENT BACKGROUND:
- Company name and industry
- Size/revenue (if available)
- Their main challenge (before working with us)

THE PROBLEM:
- Specific pain points (3-5 bullet points)
- What they tried before
- Why it wasn't working

OUR SOLUTION:
- What we implemented
- Timeline
- Key features/strategies used

THE RESULTS:
- Specific metrics (before vs after)
- Timeframe for results
- Client quote/testimonial

KEY TAKEAWAYS:
- Lesson 1
- Lesson 2
- How readers can apply this

Use real numbers and specific details throughout.
```
**Result:** Complete, structured, professional case study

### Common Templates
- **Email:** Subject, Hook, Story, Lesson, CTA
- **Blog Post:** Hook, Problem, Solution, Proof, CTA
- **Social Post:** Hook, Value, Engagement question, CTA
- **Sales Page:** Headline, Problem, Solution, Proof, Offer, Guarantee, CTA
- **Case Study:** Background, Problem, Solution, Results, Takeaways

### Quick Template (Copy-Paste)
```
Create [CONTENT] using this format:
[SECTION 1]:
- [Required element 1]
- [Required element 2]

[SECTION 2]:
- [Required element 1]
- [Required element 2]
- [Required element 3]

[SECTION 3]:
- [Required element 1]
- [Call to action]
```

### Pro Tips
- Be specific about what goes in each section
- Use this for anything you'll repeat
- Save successful formats as templates
- Combine with Framework 1 for best results

---

## FRAMEWORK 5: ITERATIVE REFINEMENT PROTOCOL

### What It Does
Provides a systematic approach to turning good output into great output through targeted, efficient follow-up prompts.

### The Formula
```
Initial prompt → [GET OUTPUT]

Follow-up 1: "Make this more [SPECIFIC QUALITY] by [SPECIFIC ACTION]"

Follow-up 2: "Now add [MISSING ELEMENT] and remove [UNNECESSARY ELEMENT]"

Follow-up 3: "Final polish: [FINAL ADJUSTMENTS]"
```

### When to Use It
- ✅ When first output is "okay" but not great
- ✅ To add missing elements
- ✅ To adjust tone or style
- ✅ To improve specific aspects
- ✅ To customize generic output

### Real Example

**Step 1 - Initial Output:**
```
"Write an email about our new course"
```
**Result:** Generic, usable but not great

**Step 2 - First Refinement:**
```
Make this email more engaging by:
- Adding a specific story about a student who struggled
- Using more conversational language
- Adding curiosity gaps that make them want to read on
```
**Result:** Better, more engaging

**Step 3 - Second Refinement:**
```
Now add:
- A specific result (time saved or money earned)
- Remove the corporate-sounding phrases
- Add a P.S. with urgency
```
**Result:** Much improved, nearly there

**Step 4 - Final Polish:**
```
Final polish:
- Make the subject line more curiosity-driven
- Add one line about who this is NOT for
- Shorten the middle section by 20%
```
**Result:** Excellent, ready to use

### Common Refinement Directions
- **Make more specific:** Add details, examples, numbers
- **Adjust tone:** More professional, more casual, more urgent
- **Add elements:** Stories, proof, urgency, guarantees
- **Remove elements:** Jargon, fluff, corporate speak
- **Restructure:** Shorter paragraphs, better flow, clearer CTAs

### Quick Template (Copy-Paste)
```
Round 1: [INITIAL PROMPT]

Round 2: Make this more [QUALITY] by [ACTION]

Round 3: Add [ELEMENT] and remove [ELEMENT]

Round 4: Final polish: [ADJUSTMENTS]
```

### Pro Tips
- Don't try to fix everything at once
- One refinement per round works best
- Be specific about what to change
- Save refinement patterns that work
- This is where good becomes great

---

## FRAMEWORK 6: MULTI-PERSONA PERSPECTIVE ENGINE

### What It Does
Generates diverse perspectives and angles from a single prompt, giving you options and depth you wouldn't get otherwise. Perfect for comprehensive coverage.

### The Formula
```
Generate [NUMBER] versions of [CONTENT] from different perspectives:

Version 1: From the perspective of [PERSONA 1 - e.g., skeptical beginner]
Version 2: From the perspective of [PERSONA 2 - e.g., experienced expert]
Version 3: From the perspective of [PERSONA 3 - e.g., busy executive]
Version 4: From the perspective of [PERSONA 4 - e.g., budget-conscious buyer]
Version 5: From the perspective of [PERSONA 5 - e.g., results-driven marketer]

Each version should address the same core message but speak to the specific concerns, language, and priorities of that persona.
```

### When to Use It
- ✅ When you need multiple angles on same topic
- ✅ For audience segmentation
- ✅ To address different pain points
- ✅ For A/B testing variations
- ✅ When you're stuck on one perspective

### Real Example

**❌ BAD (Single perspective):**
```
"Write a sales page for our marketing course"
```
**Result:** One-size-fits-all, misses segments

**✅ GOOD (Framework 6):**
```
Generate 4 versions of a sales page section for our marketing course:

Version 1: From the perspective of a busy agency owner who needs results fast and values time-saving above all

Version 2: From the perspective of a skeptical beginner who's been burned by courses before and needs proof

Version 3: From the perspective of a corporate marketer who needs to justify the expense to their boss

Version 4: From the perspective of a solopreneur who needs affordable solutions and fears wasting money

Each version should cover the same 3 benefits but speak to their specific concerns and use their language.
```
**Result:** 4 targeted versions for different segments

### Common Personas to Try
- **Beginner vs. Expert:** Different knowledge levels
- **Budget vs. Premium:** Different price sensitivities  
- **Speed vs. Quality:** Different priorities
- **Skeptic vs. Believer:** Different trust levels
- **DIY vs. Done-for-you:** Different service preferences
- **Data-driven vs. Emotion-driven:** Different decision styles

### Quick Template (Copy-Paste)
```
Generate [NUMBER] versions of [CONTENT]:

Version 1: [PERSONA 1] who [CHARACTERISTIC/CONCERN]
Version 2: [PERSONA 2] who [CHARACTERISTIC/CONCERN]
Version 3: [PERSONA 3] who [CHARACTERISTIC/CONCERN]

Same core message, different angles for each persona.
```

### Pro Tips
- Use personas that match your actual audience segments
- This reveals angles you might have missed
- Great for email segmentation
- Combine best elements from multiple versions
- Most advanced framework—master others first

---

## FRAMEWORK COMBINATIONS (POWER USER MODE)

### Combo 1: Role-Context-Task + Output Template
**Best for:** Consistent, high-quality content at scale
```
ROLE: You are a [EXPERT]
CONTEXT: Creating [CONTENT] for [AUDIENCE]

Use this format:
[Template structure]

TASK: Fill in each section with [SPECIFICS]
```

### Combo 2: Chain-of-Thought + Iterative Refinement
**Best for:** Complex projects that need perfection
```
Create [COMPLEX OUTPUT] step-by-step:
Step 1: [Task]
Step 2: [Task]
...

Then refine each step using iterative improvement.
```

### Combo 3: Strategic Constraint + Multi-Persona
**Best for:** Creative campaigns with multiple angles
```
Generate [NUMBER] versions with these constraints:
- Constraint 1
- Constraint 2

From different perspectives:
- Persona 1
- Persona 2
```

---

## DECISION TREE: WHICH FRAMEWORK TO USE?

```
START HERE
    ↓
Is this a simple, one-off task?
    ↓
YES → Use Framework 1 (Role-Context-Task)
    ↓
NO → Is output too generic or boring?
    ↓
YES → Use Framework 2 (Strategic Constraint)
    ↓
NO → Is this complex/multi-part?
    ↓
YES → Use Framework 3 (Chain-of-Thought)
    ↓
NO → Do you need specific formatting?
    ↓
YES → Use Framework 4 (Output Template)
    ↓
NO → Is first output "okay but not great"?
    ↓
YES → Use Framework 5 (Iterative Refinement)
    ↓
NO → Do you need multiple angles?
    ↓
YES → Use Framework 6 (Multi-Persona)
```

---

## QUICK REFERENCE CARD

**Print this and keep it handy:**

| # | Framework | When to Use | Key Element |
|---|-----------|-------------|-------------|
| 1 | Role-Context-Task | Everything | Specific expertise |
| 2 | Strategic Constraint | Generic output | Limitations |
| 3 | Chain-of-Thought | Complex tasks | Step-by-step |
| 4 | Output Template | Format matters | Structure |
| 5 | Iterative Refinement | Good → Great | Refinement rounds |
| 6 | Multi-Persona | Multiple angles | Different perspectives |

---

## PRACTICE EXERCISES

**Exercise 1:** Take a prompt that gave you generic results. Rewrite it using Framework 1.

**Exercise 2:** Pick a common marketing task. Create a template using Framework 4.

**Exercise 3:** Take "okay" AI output and improve it using Framework 5 (3 rounds).

**Exercise 4:** Write one email using all 6 frameworks and compare results.

---

## REMEMBER

✓ **Framework 1 solves 80% of problems**
✓ **Combine frameworks for complex tasks**
✓ **Start simple, add complexity as needed**
✓ **Save templates that work for you**
✓ **The framework is a starting point—customize it**

**Master these 6 frameworks and you'll outperform 95% of AI users.**

---

**Next: Troubleshooting Guide →**